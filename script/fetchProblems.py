from bs4 import BeautifulSoup
from requests import get
from os import listdir, remove, path

# need some globals because of I am bad at de-coupling
questions = [
        {'range': (1,     10), 'module':"List"      },  # Lists
        {'range': (11,    20), 'module':"List"      },  # Lists, continued
        {'range': (21,    28), 'module':"List"      },  # Lists again
        {'range': (31,    41), 'module':"Arithmetic"},  # Arithmetic
        {'range': (46,    50), 'module':"Logic"     },  # Logic and codes
        {'range': ('54A', 60), 'module':"BTree"     },  # Binary trees
        {'range': (61,    69), 'module':"BTree"     },  # Binary trees, continued
        {'range': ('70B', 73), 'module':"MTree"     },  # Multiway trees
        {'range': (80,    89), 'module':"Graph"     },  # Graphs
        {'range': (90,    94), 'module':"Misc"      },  # Miscellaneous problems
        {'range': (95,    99), 'module':"Misc"      },  # Miscellaneous problems, continued
]

CACHE_DIR = path.abspath('cache')
OUT_DIR = path.abspath('out')

def printg(s):
    print(f'\33[1;32m{s}\33[0m')

# update_cache should be call only when wiki is changes
# we should only work with caches
def update_cache():
    def url(a,b):
        return f"https://wiki.haskell.org/99_questions/{a}_to_{b}"

    urls = [url(*q['range']) for q in questions]
    # for u in urls:
    #     print(u)

    for i,url in enumerate(urls):
        doc_file = f'{CACHE_DIR}/{i}.html'
        print(f'{url} --> {doc_file}')
        res = get(url)
        print(res)
        if res.status_code == 200:
            with open(doc_file, 'w') as f:
                f.write(res.text)

def haskell_class(tag):
    if not tag.has_attr('class'):
        return False
    else:
        return 'source-haskell' in tag['class']

class Problem:
    def __init__(self, number,desc, example):
        self.number = number
        self.desc = desc
        self.example = example

    def __repr__(self):
        return f"{self.number} {self.desc}\n{self.example}"


def parseProblems(html_doc):
    soup = BeautifulSoup(html_doc, 'html.parser')

    problems = []
    heads = soup.findAll('h2')
    for head in heads:
        # span
        pnum = head.findNext().text.split()
        if pnum[1] == 'Problem':
            pnum = pnum[2]
        else:
            continue

        # desc
        desc = head.findNext().findNext().text.replace('\n','')
        desc = ' '.join(desc.split())

        n = head
        ex = []
        while True:
            n = n.findNext()
            if not n:
                break

            if n.name == 'h2':
                break

            if haskell_class(n):
                ex.append(n.text)
                # print(n.text)
        ex = '\n'.join(ex)

        p = Problem(pnum,desc,ex)
        # print(p.number, end=' ')
        problems.append(p)

    # print()
    return problems

def create_code(problem):
    out = ''
    out += f'-- | Problem #{problem.number}: {problem.desc}\n'
    for l in problem.example.split('\n'):
        out += f'-- {l}\n'
    out = out.replace('λ>', '>>>')
    fn = ''
    for i in out.split('\n'):
        if ('>>>' in i):
            fn = i.split()[2]
            break
    if fn:
        out += f'{fn} = undefined'
    out += '\n\n'

    out = '\n'.join([o.rstrip() for o in out.split('\n')])
    return out

#  populate the cache if it empty
def gen_cache():
    printg('fetching wiki source ...')
    fs = listdir(CACHE_DIR)
    if not fs:
        print('no cache files available, fetching from web')
        update_cache()
    else:
        print(f'{len(fs)} cache files available, \33[33mSkip\33[0m downloading.')
        print(f'To force re-download (all), remove {CACHE_DIR}/*')

# processing files in cache
def process_cache():
    for i,f in enumerate(listdir(CACHE_DIR)):
        print(i,end=' ')
        doc_file = f'{CACHE_DIR}/{f}'
        out_file = f'{OUT_DIR}/{i}.hs'
        # print(f'{doc_file} --> {out_file}')
        problem = None
        with open(doc_file, 'r') as fh:
            html_doc = fh.read()
            problem = parseProblems(html_doc)

        with open(out_file, 'w') as fh:
            for p in problem:
                fh.write(create_code(p))
    print()

def clear_output():
    ls = listdir(OUT_DIR)
    if not ls:
        return

    printg('removing old outputs ...')
    for f in listdir(OUT_DIR):
        remove(f'{OUT_DIR}/{f}')

def gen_module():
    printg('generating modules ...')
    modules = {}
    for i,q in enumerate(questions):
        n = q['module']
        if n not in modules:
            modules[n] = []
            modules[n].append(i)
        else:
            modules[n].append(i)

    for m in modules:
        print(m,end=' ')
        with open(f'{OUT_DIR}/{m}.hs', 'w') as f:
            f.write(f'module {m} where\n\n')

            for k in modules[m]:
                # print(k, end=' ')
                s = f'{OUT_DIR}/{k}.hs'
                with open(s) as g:
                    f.write(g.read())
            pass
    print()

if __name__ == '__main__':
    print(f'CACHE_DIR: {CACHE_DIR}')
    print(f'OUT_DIR:   {OUT_DIR}')

    clear_output()
    gen_cache()
    process_cache()
    gen_module()


