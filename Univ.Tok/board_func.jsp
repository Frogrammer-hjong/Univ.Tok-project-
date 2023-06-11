<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="true" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Board with Local Storage</title>
        <link
            href="https://fonts.googleapis.com/css?family=Jua&display=swap"
            rel="stylesheet"
        />
        <style>
            .hidden {
                display: none;
            }
            .main__container {
                height: 700px;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            .board__container,
            .contents__container,
            .editor__container {
                width: 700px;
                display: flex;
                justify-content: flex-start;
                align-items: center;
                flex-direction: column;
                background-color: #ffffff;
            }

            .board__container {
                margin: 10px 0px 0px 0px;
                height: 350px;
                padding-top: 10px;
                padding-bottom: 10px;
                border-radius: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
                position: relative;
            }

            .contents__container {
                margin: 10px 0px;
                height: 350px;
                padding-top: 10px;
                padding-bottom: 10px;
                border-radius: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }

            .editor__container {
                margin: 10px 0px;
                height: 260px;
                padding-top: 20px;
                padding-bottom: 20px;
                border-radius: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }

            /* Board Lists */
            .board__content-column {
                padding: 10px;
            }
            .board__column {
                font-size: 20px;
                padding: 5px;
            }
            .board {
                width: 600px;
                text-align: center;
                margin-bottom: 5px;
            }

            .board__index-container {
                position: absolute;
                bottom: 10px;
            }

            .board__index-link {
                all: unset;
                font-weight: bold;
                font-size: 20px;
                margin-right: 5px;
            }

            .board__index-link:hover {
                transition: 0.3s;
                cursor: pointer;
                color: blue;
            }

            /* Contents */
            .contents__titles {
                width: 600px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding-bottom: 10px;
                border-bottom: 2px solid rgba(0, 0, 0, 0.08);
                margin-bottom: 20px;
            }

            .contents__column {
                width: 200px;
                display: flex;
                justify-content: space-around;
                align-items: center;
            }

            .contents__content {
                width: 600px;
                display: flex;
                justify-content: start;
                align-items: center;
            }

            /* Editor */
            .editor__form {
                width: 600px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }

            input {
                all: unset;
                border-radius: 5px;
                border: 1px solid rgba(0, 0, 0, 0.5);
            }

            .editor__title-input,
            .editor__content-input {
                width: 100%;
                padding: 5px 10px;
                margin-bottom: 10px;
            }

            .editor__content-input {
                height: 100px;
            }

            .editor__btn {
                all: unset;
                border: 1px solid rgba(0, 0, 0, 0.5);
                border-radius: 5px;
                padding: 5px 10px;
                margin-top: 10px;
            }

            button:active {
                transform: scale(0.93);
            }
        </style>
    </head>
    <body>
        <main class="main__container">
            <div id="boardList">
                <div class="board__container">
                    <table class="board">
                        <thead class="board__table-head">
                            <tr class="board__titles">
                                <th class="board__column">번호</th>
                                <th class="board__column">제목</th>
                                <th class="board__column">작성자</th>
                                <th class="board__column">작성일</th>
                                <th class="board__column">조회</th>
                            </tr>
                        </thead>
                        <tbody class="board__contents" id="board-body"></tbody>
                    </table>
                    <div
                        class="board__index-container"
                        id="index-container"
                    ></div>
                    <button
                        style="position: absolute; bottom: 20px; right: 20px"
                        onclick="{boardWriteForm()}"
                    >
                        ✏
                    </button>
                </div>
            </div>
            <div class="hidden" id="boardDetail">
                <button style="font-size: 20px" onclick="{returnBoard()}">
                    ←
                </button>
                <div class="contents__container"></div>
            </div>
            <div class="hidden" id="boardWrite">
                <div class="editor__container">
                    <form action="#" class="editor__form" id="editor-form">
                        <input
                            type="text"
                            class="editor__title-input"
                            id="editor-title-input"
                            placeholder="제목"
                        />
                        <input
                            type="text"
                            class="editor__content-input"
                            id="editor-content-input"
                            placeholder="내용"
                        />
                        <button
                            style="cursor: pointer"
                            class="editor__btn"
                            id="editor-submit-btn"
                        >
                            작성 완료
                        </button>
                    </form>
                </div>
            </div>
        </main>
        <script>
            const boardTableBody = document.querySelector("#board-body");
            const boardList = document.querySelector("#boardList");
            const boardDetail = document.querySelector("#boardDetail");
            const boardWrite = document.querySelector("#boardWrite");

            const contentsContainer = document.querySelector(
                ".contents__container"
            );

            const editorForm = document.querySelector("#editor-form");
            const titleInput = document.querySelector("#editor-title-input");
            const contentInput = document.querySelector(
                "#editor-content-input"
            );

            const BOARDLIST_LS = "boardLists";
            const boardListsObj = [];
            let nums = 1;
            let author = "unun";
            let date = new Date();
            let views = 0;

            const HIDDEN_CLASSNAME = "hidden";

            function boardWriteForm() {
                boardList.classList.add(HIDDEN_CLASSNAME);
                boardWrite.classList.remove(HIDDEN_CLASSNAME);
            }

            function returnBoard() {
                boardList.classList.remove(HIDDEN_CLASSNAME);
                boardDetail.classList.add(HIDDEN_CLASSNAME);
            }

            function onTitleClick(e) {
                boardList.classList.add(HIDDEN_CLASSNAME);
                boardDetail.classList.remove(HIDDEN_CLASSNAME);
                contentsContainer.textContent = "";
                const lists = JSON.parse(localStorage.getItem(BOARDLIST_LS));
                const index = e.target.parentNode.id.replace(/[a-z|-]/gi, "");

                const contentsTitles = document.createElement("div");
                contentsTitles.classList.add("contents__titles");

                const contentsColumnFirst = document.createElement("div");
                contentsColumnFirst.classList.add("contents__column");

                const contentsTitle = document.createElement("div");
                contentsTitle.classList.add("contents__title");
                contentsTitle.textContent = lists[index].title;

                const contentsColumnSecond = document.createElement("div");
                contentsColumnSecond.classList.add("contents__column");

                const contentsAuthor = document.createElement("div");
                contentsAuthor.classList.add("contents__author");
                contentsAuthor.textContent = lists[index].author;

                const contentsDate = document.createElement("div");
                contentsDate.classList.add("contents__date");
                contentsDate.textContent = lists[index].date;

                const contentsViews = document.createElement("div");
                contentsViews.classList.add("contents__views");
                contentsViews.textContent = lists[index].views;

                const contentsContent = document.createElement("div");
                contentsContent.classList.add("contents__content");
                contentsContent.textContent = lists[index].content;

                contentsColumnFirst.appendChild(contentsTitle);

                contentsColumnSecond.appendChild(contentsAuthor);
                contentsColumnSecond.appendChild(contentsDate);
                contentsColumnSecond.appendChild(contentsViews);

                contentsTitles.appendChild(contentsColumnFirst);
                contentsTitles.appendChild(contentsColumnSecond);

                contentsContainer.appendChild(contentsTitles);
                contentsContainer.appendChild(contentsContent);
            }

            function assignIndex() {
                const lists = JSON.parse(localStorage.getItem(BOARDLIST_LS));
                if (!lists) {
                    nums = 1;
                } else {
                    nums = parseInt(lists[lists.length - 1].num) + 1;
                }
            }

            function onEditorFormSubmit(e) {
                e.preventDefault();

                if (views == 0) {
                    views = 0;
                } else {
                    views++;
                }

                const title = titleInput.value;
                const content = contentInput.value;

                const lists = JSON.parse(localStorage.getItem(BOARDLIST_LS));
                if (!lists) {
                    const objArr = [];
                    objArr.push({
                        num: `${nums++}`,
                        title: `${title}`,
                        author: `${author}`,
                        date: `${date.getFullYear()}.${
                            date.getMonth() + 1
                        }.${date.getDate()}.`,
                        views: `${views++}`,
                        content: `${content}`,
                    });

                    localStorage.setItem(BOARDLIST_LS, JSON.stringify(objArr));
                } else {
                    lists.push({
                        num: `${nums++}`,
                        title: `${title}`,
                        author: `${author}`,
                        date: `${date.getFullYear()}.${
                            date.getMonth() + 1
                        }.${date.getDate()}.`,
                        views: `${views++}`,
                        content: `${content}`,
                    });

                    localStorage.setItem(BOARDLIST_LS, JSON.stringify(lists));
                }

                titleInput.value = "";
                contentInput.value = "";
                titleInput.focus();
                window.location.reload();
            }

            function showBoardLists() {
                const lists = JSON.parse(localStorage.getItem(BOARDLIST_LS));

                lists.forEach((list, index) => {
                    if (index < 5) {
                        const tr = document.createElement("tr");
                        tr.classList.add("board__content");

                        const tdNum = document.createElement("td");
                        tdNum.classList.add("board__content-column");
                        tdNum.textContent = list.num;

                        const aTitle = document.createElement("a");
                        aTitle.href = "#";
                        aTitle.id = `link-to-content${index}`;

                        const tdTitle = document.createElement("td");
                        tdTitle.classList.add("board__content-column");
                        tdTitle.textContent = list.title;

                        aTitle.appendChild(tdTitle);

                        const tdAuthor = document.createElement("td");
                        tdAuthor.classList.add("board__content-column");
                        tdAuthor.textContent = list.author;

                        const tdDate = document.createElement("td");
                        tdDate.classList.add("board__content-column");
                        tdDate.textContent = list.date;

                        const tdViews = document.createElement("td");
                        tdViews.classList.add("board__content-column");
                        tdViews.textContent = list.views;

                        tr.appendChild(tdNum);
                        tr.appendChild(aTitle);
                        tr.appendChild(tdAuthor);
                        tr.appendChild(tdDate);
                        tr.appendChild(tdViews);

                        boardTableBody.appendChild(tr);
                        const linkToContent = document.querySelector(
                            `#link-to-content${index}`
                        );
                        linkToContent.addEventListener("click", onTitleClick);
                    } else if (index === 5) {
                        const boardIndexMax = Math.ceil(lists.length / 5);
                        for (let i = 0; i < boardIndexMax; i++) {
                            const indexContainer =
                                document.querySelector("#index-container");

                            const aIndex = document.createElement("a");
                            aIndex.classList.add("board__index-link");

                            const spanIndexText =
                                document.createElement("span");
                            spanIndexText.classList.add("board__index");
                            spanIndexText.textContent = i + 1;

                            aIndex.appendChild(spanIndexText);
                            indexContainer.appendChild(aIndex);

                            aIndex.addEventListener("click", () => {
                                showBoardListsNewPage(i);
                            });
                        }
                    }
                });
            }

            function showBoardListsNewPage(pageIndex) {
                boardTableBody.textContent = "";
                const lists = JSON.parse(localStorage.getItem(BOARDLIST_LS));
                const limitPage = pageIndex * 5;

                lists.forEach((list, index) => {
                    if (index >= limitPage && index < limitPage + 5) {
                        const tr = document.createElement("tr");
                        tr.classList.add("board__content");

                        const tdNum = document.createElement("td");
                        tdNum.classList.add("board__content-column");
                        tdNum.textContent = list.num;

                        const aTitle = document.createElement("a");
                        aTitle.href = "#";
                        aTitle.id = `link-to-content${index}`;

                        const tdTitle = document.createElement("td");
                        tdTitle.classList.add("board__content-column");
                        tdTitle.textContent = list.title;

                        aTitle.appendChild(tdTitle);

                        const tdAuthor = document.createElement("td");
                        tdAuthor.classList.add("board__content-column");
                        tdAuthor.textContent = list.author;

                        const tdDate = document.createElement("td");
                        tdDate.classList.add("board__content-column");
                        tdDate.textContent = list.date;

                        const tdViews = document.createElement("td");
                        tdViews.classList.add("board__content-column");
                        tdViews.textContent = list.views;

                        tr.appendChild(tdNum);
                        tr.appendChild(aTitle);
                        tr.appendChild(tdAuthor);
                        tr.appendChild(tdDate);
                        tr.appendChild(tdViews);

                        boardTableBody.appendChild(tr);
                        const linkToContent = document.querySelector(
                            `#link-to-content${index}`
                        );
                        linkToContent.addEventListener("click", onTitleClick);
                    }
                });
            }

            editorForm.addEventListener("submit", onEditorFormSubmit);

            if (boardTableBody) {
                assignIndex();
                showBoardLists();
            }
        </script>
    </body>
</html>