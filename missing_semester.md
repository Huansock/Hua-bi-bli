# missing semester

### 셸

    shebang : 

### 스크립팅

    $0 = 스크립트 이름
    $$ = 현재 pid 
    !! = 마지막 명령 전체
    $_ = 마지막 명령에서 나온 마지막 인수 

### vim

    I use it already.
    set -o vi - use vim for bash

### data wrangling
 
    sed = stream editer
    awk = programming language for text datastream

    hmmm but why don't we use just c or something like that? 

### Command-line Environment

    Ctrl-z = SIGSTOP
    fg, bg = 일시중단된 작업을 앞이나 뒤에서 계속함.
    jobs = 현재 터미널 세션과 관련된 미완료 작업 목록을 보여줍니다.
    Local Port Forwarding ? 
    


        지금까지 공부한 바에 따르면, 우리는 명령어 ps aux | grep 로 PID를 조회하여 작업을 종료할 수 있습니다. 하지만 이것보다 더 나은 방법이 있습니다. 터미널에서 sleep 10000를 실행하고, Ctrl-Z로 그것을 백그라운드 실행하세요. 그리고 bg를 통해 이 작업을 계속합니다. 이제 pgrep을 사용해 pid를 찾은 다움 pkill을 실행하면 pid를 직접 타이핑하지 않고 작업을 종료시킬 수 있습니다. (힌트: -af 플래그를 사용하세요).

        여러분이 다른 프로세스가 종료되기를 기다려 새 프로세스를 시작하려고 한다고 합시다, 이것을 어떻게 할 수 있을까요? 이 실습에서 프로세스 제한은 항상 sleep 60 &로 합니다. 이것을 가능케 하는 또 다른 방법은 wait 명령어를 사용하는 것입니다. sleep 명령어를 실행한 뒤 백그라운드 작업이 끝날 때까지 기다려 ls가 실행되도록 하세요.

        하지만 만일 각기 다른 bash 창에서 작업을 실행하는 중이라면, 이 시도는 실패할 것입니다. wait은 자식 프로세스에만 적용되기 때문입니다. 지금껏 우리가 다루지 않은 기능 중 하나는 명령어 kill이 성공했을때 exit status가 0(zero)이 되며, 그렇지 않을때는 0이 아니라는 것(nonzero)입니다. 명령어 kill -0은 시그널을 보내지 않습니다만 프로세스가 존재하지 않을때 0이 아닌 exit status를 반환할 것입니다. pidwait이라는 이름의, pid를 가져오고 해당 프로세스가 끝날 때까지 기다리는 bash 명령어를 작성해 보세요. 불필요한 CPU 낭비 방지를 위해 sleep 명령어를 사용해야 합니다.
    


