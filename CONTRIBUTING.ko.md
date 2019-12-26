# OpenZeppelin SDK 에 컨트리뷰션 하기

_이 가이드는 [the one from OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/CONTRIBUTING.md) 에서 영감을 받았습니다._

OpenZeppelin SDK 컨트리뷰션 해주시는것에 대해 진심으로 감사하고 소중하게 생각합니다.
신속한 병합을 위해, 5분만 시간을 들여 아래 내용을 숙지 해 주세요.

## 컨트리뷰션에 이슈가 없는지 검토 해 주세요

**기여하고자 하는 부분에대해 이슈가 없는지 항상 확인 해 주세요** OpenZeppelin SDK에 가장 적합한 새로운 기능의 코딩을 시작하기 전에, [새 이슈 등록](https://github.com/OpenZeppelin/openzeppelin-sdk/issues/new) 을 통해 기능을 제안하고 설계를 논의하십시오. 이렇게하면 프로젝트에 가장 적합한 설계를 구성할 수 있으며, 거절될 수 도 있는 불필요한 코드를 작성하는데 시간을 소모하지 않아도 됩니다.

기존 문제에 대한 작업을 시작하는 경우, 문제에 대한 의견을 추가하여 알려 주시면 중복작업을 피할 수 있습니다.

문서에서 오타가 있으면 바로 수정하여 풀리퀘스트를 요청 해 주세요.

## 풀리퀘스트 생성하기 (PRs)

컨트리뷰터는 이 레파지토리를 포크하여, 본인의 저장소에서 작업한 후 풀리퀘스트를 요청 하변 됩니다. 풀리퀘스트는 리뷰 후 메인 레파지토리에 병합 됩니다. 이에 관하여 ["Fork-a-Repo"](https://help.github.com/articles/fork-a-repo/) 를 참고 해 주세요.

## 일반적인 워크 플로우

1. 포트 상태가 메인 레파지토리와 비교하여 최신상태 인지 확인하세요:
    ```
    git remote add upstream https://github.com/OpenZeppelin/openzeppelin-sdk.git
    git fetch upstream
    git pull --rebase upstream master
    ```

2. 설치
    ```
    yarn
    ```

3. `master` 에서 `fix/some-bug-#123`, `feature/some-feature-#456`, or `docs/some-doc-#789` 와 같은 브랜치로 이동:
    ```
    git checkout -b fix/some-bug-#123
    ```

4. 수정 후, 파일을 추가하고, 포크한 저장소에 커밋 후 푸쉬:
    ```
    git add SomeFile.js
    git commit "Fix some bug #123"
    git push origin fix/some-bug-#123
    ```

5. 모든 테스트가 통과 하였는지 확인하세요
    ```
    openzeppelin-sdk/packages/cli$ yarn test
    openzeppelin-sdk/packages/lib$ yarn test
    ```

7. [OpenZeppelin/openzeppelin-sdk](https://github.com/OpenZeppelin/openzeppelin-sdk) 로 이동하여 새 풀리퀘스트를 요청 하세요.

8. 관리자가 코드리뷰 후 메인 레파지토리로 병합 하기 전 수정요청을 할 수도 있습니다. 우리는 모든 테스트케이스가 통과 하였는지 확인하고, 코딩 스타일을 리뷰 한 후, 코드 정확성을 확인할 것 입니다. 모두 확인 되면, 컨트리뷰터의 풀리퀘스트를 병합 할 것이며, 이에따라 코드는 OpenZeppelin SDK 의 일부가 될 것입니다.

## Language

[English](./CONTRIBUTING.md)