# Vim

**내가 모르던 것들**

- A를 누르면 concatnate 할 수 있음.
- U를 누르면 한 줄에서 수정한 것을 모두 취소할 수 있음.
- CTRL-R을 누르면 취소한 것을 다시 실행할 수 있음
- p 는 put(붙이기)의 줄임말임.
- c 는 change의 줄임말임. 
- ce를 하면 단어 끝까지를 바꿈.
- CTRL-G를 누르면 현재 위치랑 파일의 상태를 볼 수 있음
- 문구를 역방향으로 찾으려면 ?를 사용하면 됨. CTRL-0을 사용하면 원래 위치로 돌아옴.
- %를 눌러서 괄호의 짝을 찾을 수 있음
- :s/old/new/g 를 하면 old를 new로 subtitue함.

**치환 예시**

- :#,#s/old/new/g    #,# 는 두 줄의 줄번호를 뜻합니다.
- :%s/old/new/g      파일 전체에서 발견된 모든 것을 치환하는 경우입니다.
- :%s/old/new/gc     파일 전체에서 발견된 모든 것을 찾고, 치환할지 안할지 프롬프트로 명령합니다. 

**register**

- "kyy <- 이 명령어를 쓰면 k라는 레지스터에 현재 줄이 복사됨
- "Kyy <- 이 명령어를 쓰면 k라는 레지스터에 현재 줄이 추가됨.
- "*y | "+y  <- 이 명령어를 쓰면 시스템 clipboard에 현재 줄이 복사됨.
- "kp 하면 붙여넣기

- :!를 하면 외부 쉘 명령어를 실행할 수 있음. (어 이거 개 좋은데)
- :r FILENAME을 하면 파일을 읽을 수 있음. :r !ls 하면 리스트가 나온다고??

참고:  찾은 내용이 강조(HIGHLIGHT)된 것을 없애려면:   :nohlsearch 
참고:  만약, 검색 한번에 대해서만 대소문자 구별 세팅을 끄고 싶다면 \c 를 이용할 수 있습니다. 
:  /ignore\c  <ENTER>

CTRL-w 하면 윈도우를 건너감. 

**vimrc (runtime configuration)**

빔 예제 보기
- :r $VIMRUNTIME/vimrc_example.vim

더 자세한 내용은 :help vimrc-intro를 참고 하세요.

- CTRL-d 를 누르면 커맨드 힌트를 볼 수 있음
- CTRL-] 로 링크 따라가기
- C-t로 목차보기

**화면 창 나누기**
:split 과 :vsplit <filename>

CTRL-W 는 모든 윈도우 기능을 사용할 수 있음.

|  key  |                    action                     |
| :---: | :-------------------------------------------: |
|   w   |                 change window                 |
| HJKL  |    move window to right, left, top, bottom    |
| hjkl  | move focus to right, left, top, bottom window |


:wall 


vimdiff 랑 vim tab 존재하긴 하지만 요즘은 파일의 버전들은 git으로 관리하고 터미널의 탭은 tmux로 관리한다. 

:scriptname 를 쓰면 vim이 사용하는 모든 script를 볼 수 있음
J 를 누르면 줄바꿈이 없어짐
w

