# Overview

> This document organizes things I want to learn and do. When I think of something I want to learn, but cannot focus on it in the moment I add it to this list
> Completed tasks are moved to an archive document

> The following taxonomy is loosely followed.
> The below are listed in order of time investments

- [ ] Read -> 📖 A reading task usually less than 30 minutes
- [ ] Task -> 🗒️ A task with a clear completion criteria. Ideally smaller than 60 minutes
- [ ] Parse -> 📚 A topic or large corpus to be broken into tasks or read objects
- [ ] Learn -> ❔ A topic to investigate and organize a learning plan around
- [ ] Habit -> 🏃 A habit to adopt

> completed tasks are in [completed_tasks.md](./notes_drafts/completed-learning-tasks.md)

---

# Languages

## CSharp

- [ ] Task -> 🗒️ Finish Docs
- [ ] Read -> (style guides) 📖 https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/identifier-names#naming-conventions
- [ ] Read -> (style guides) 📖 https://learn.microsoft.com/en-us/dotnet/csharp/fundamentals/coding-style/coding-conventions#style-guidelines
- [ ] Read -> 📖 https://code.visualstudio.com/docs/csharp/introvideos-csharp
- [ ] Task -> 🗒️ Get Snippets (Vscode)
- [ ] Parse -> 📚 Review `System` namespace https://learn.microsoft.com/en-us/dotnet/api/system?view=net-8.0
- [ ] Read -> 📖 https://code.visualstudio.com/docs/csharp/introvideos-csharp

## HTML

- [ ] Learn -> ❔ understand the meta elements more in depth (usually in the index page)

## CSS

- [ ] Learn -> ❔ How to manage class names at scale?

- [ ] Habit -> 🏃 begin using minmax more
- [ ] Habit -> 🏃 begin using repeat more
- [ ] Habit -> 🏃 how to manage class names at scale?

- [ ] Task -> 🗒️ <https://blog.esteetey.dev/make-your-website-stand-out-with-a-custom-scrollbar>

## TYPESCRIPT

Learn -> ❔ Dynamic key manipulation

- _see immer+chat gpt_

TYPE MANIPULATION SECTION (In order)

- [ ] Task -> 🗒️ Explore Object manipulation methods more
- [ ] Parse -> 📚 <https://www.typescriptlang.org/docs/handbook/utility-types.html>
- [ ] Task -> 🗒️ Integrate into Knowledge Base

- [ ] Learn -> ❔ Make more generic keys for objects
- [ ] Task -> 🗒️ Option -> [key: string]:string
- [ ] Task -> 🗒️ Option -> [key: string]:Partial Type> || [key: string]:Required<`Type`
- [ ] Task -> 🗒️ Option -> [key: string]:Type

- [ ] Read -> 📖 <https://www.typescriptlang.org/docs/handbook/utility-types.html#recordkeys-type>
- [ ] Read -> 📖 Again <https://www.typescriptlang.org/docs/handbook/utility-types.html>
- [ ] Read -> 📖 Review [key: string]: number syntax <https://www.typescriptlang.org/static/TypeScript%20Interfaces-34f1ad12132fb463bd1dfe5b85c5b2e6.png>
- [ ] Task -> 🗒️ Consider emitting types for packages <https://www.typescriptlang.org/tsconfig#declaration>

## Node Scripting

- [ ] Read -> 📖 https://code.visualstudio.com/docs/nodejs/nodejs-debugging
- [ ] Parse -> 📚 https://nodejs.org/api/
  - [ ] Read -> 📖 https://nodejs.org/api/fs.html
- [ ] Parse -> 📚 handlebars
- [ ] Task -> 🗒️ ~Apply scripting practices to [Github API](#githubgit)~ task (use gh cli for this)
- [ ] Learn -> ❔ Review js in google sheets and/or js in excel

- [ ] Habit -> 🏃 Begin scripting inside "../scripts"
  - [ ] Complete [Package Survey](#npm-packages)

### Node Scripting Project Setup

- [ ] Task -> 🗒️ use pnpm only
- [ ] Task -> 🗒️ [Vscode Profile](https://code.visualstudio.com/docs/editor/profiles#_nodejs-profile-template)?
- [ ] Task -> 🗒️ initiate eslint in a folder [ref](https://thisdavej.com/visual-studio-code-jumpstart-for-node-js-developers/)
- [ ] Parse -> 📚 Project Ideas
  - Dump cli logs into files daily, do things with those files [inspiration](https://thisdavej.com/using-winston-a-versatile-logging-library-for-node-js/)
  - Could create md at scale with handle bars [inspiration](https://thisdavej.com/learn-handlebars-with-node-js-and-help-freddys-fish/)
  - Turn js scripts into a cli

## JAVASCRIPT

- [ ] Habit -> 🏃 Review+use single namespace exports <https://www.typescriptlang.org/docs/handbook/2/modules.html#es-module-syntax>
- [ ] Habit -> 🏃 monitor events in console <https://developer.chrome.com/docs/devtools/console/utilities/#monitorEvents-function>
- [ ] Learn -> ❔ Dedup array via casting to set
- [ ] Learn -> ❔ Jsdoc: explore bringing it into your dev process
- [ ] Learn -> ❔ Understand the window interface better ex. window.location returns a URL object

- [ ] Task -> 🗒️ Review look up performance of sets/arrays/objects
- [ ] Learn -> ❔ Web APIs
  - <https://developer.mozilla.org/en-US/docs/Web/API> [All]
  - <https://developer.mozilla.org/en-US/docs/Web/API/HTML_DOM_API>
  - <https://developer.mozilla.org/en-US/docs/Web/API/Screen>
  - <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement>
  - <https://developer.mozilla.org/en-US/docs/Web/API/Element>
  - <https://developer.mozilla.org/en-US/docs/Web/API/Node>
  - <https://developer.mozilla.org/en-US/docs/Web/API/Document_object_model/Locating_DOM_elements_using_selectors>
  - <https://developer.mozilla.org/en-US/docs/Web/API/HTML_Drag_and_Drop_API>
  - <https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserver>
  - <https://developer.mozilla.org/en-US/docs/Web/API/Document/write> (Dark Magic?)
  - how to use in React <https://react.dev/reference/react/useSyncExternalStore#subscribing-to-a-browser-api>

---

## Frameworks

### .NET

- [ ] Parse -> 📚 [.NET](../project_notes/dot_net_onboarding/NET.md)
- [ ] Task -> 🗒️ move [notes](../project_notes//NET.md) into learning plan

#### .NET - Dotnet Entity Framework

- [ ] Read -> 📖 https://learn.microsoft.com/en-us/ef/core/
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying?tabs=dotnet-core-cli

#### .NET - Architecture Docs

- [ ] Parse -> 📚 https://learn.microsoft.com/en-us/dotnet/architecture/
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/architecture/microservices/ (482 pages)
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/ (118 pages)

#### .NET - Dotnet ef Cli

#### .NET - Dotnet Cli

- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/core/tools/
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/core/tools/global-tools
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/core/diagnostics/
- [ ] Task -> 🗒️ POC this `dotnet run --urls="https://localhost:7777"`
- [ ] Task -> 🗒️ setup dev-certs https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-dev-certs

#### .NET - MSBUILD

#### .NET - ASP.net (Core)

- [ ] Read -> 📖 (Architecture Overview) https://learn.microsoft.com/en-us/dotnet/architecture/modern-web-apps-azure/
- [ ] Parse -> 📚📚📚
- [ ] Parse -> Core API 📚 https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore?view=aspnetcore-8.0

- [ ] Task -> 🗒️ setup configuration providers https://learn.microsoft.com/en-us/aspnet/core/fundamentals/configuration/?view=aspnetcore-8.0#json-configuration-provider
- [ ] Task -> 🗒️ Investigate `ValidateDataAnnotations` https://learn.microsoft.com/en-us/aspnet/core/fundamentals/configuration/options?view=aspnetcore-8.0#options-validation
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/api/microsoft.extensions.hosting.ihostbuilder?view=dotnet-plat-ext-8.0
- [ ] Read -> 📖 seems useful for routing https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.mapwhenextensions.mapwhen?view=aspnetcore-8.0
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.mapwhenextensions.mapwhen?view=aspnetcore-8.0
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.diagnostics.developerexceptionpagemiddleware?view=aspnetcore-8.0
- [ ] Learn -> ❔ convenience methods on controllerbase like `Ok()` or `badRequest()` These are "controllerbase methods"

- [ ] Task -> 🗒️ search and collect all builder. Actions (equivalent to reading all the program.cs files)
- [ ] Task -> 🗒️ setup and validate analyzers https://learn.microsoft.com/en-us/aspnet/core/web-api/advanced/analyzers?view=aspnetcore-8.0#reference-the-analyzer-package

#### .NET - ASP.net Web APIs

- [ ] Parse -> 📚 https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.controllerbase?view=aspnetcore-9.0
- [ ] Parse -> 📚 https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc?view=aspnetcore-9.0
- [ ] Task -> 🗒️ Complete Demo https://learn.microsoft.com/en-us/aspnet/core/web-api/handle-errors?view=aspnetcore-8.0

#### .NET - Rosyln Compiler

- [ ] Parse -> 📚 https://github.com/dotnet/roslyn/tree/main?tab=readme-ov-file
- [ ] Read -> 📖 ( maybe - Visual Studio based ) https://learn.microsoft.com/en-us/visualstudio/code-quality/roslyn-analyzers-overview?view=vs-2022

### RUSH

- [ ] Task -> 🗒️ Enable watch mode <https://rushjs.io/pages/advanced/watch_mode/>
  - <https://github.com/speechly/speechly/blob/45eb77ce8637f272d8b1adf3cd356a1386502020/common/config/rush/command-line.json#L15>
- [ ] Task -> 🗒️ Add the following to maintenance `rush-pnpm update -r`

### TESTING

#### PLAYWRIGHT

- [ ] Read -> 📖 https://playwright.dev/docs/intro

#### UNIT TESTING - VITEST

- [ ] Task -> 🗒️ Document Config+Usage (<https://github.com/ab-inbev/supply-app-mod-app-core/blob/f9ebae98d36238caa81e8d577fb35230f7e87fc0/tools/vite-config/index.ts#L12-L27>)
- [ ] Task -> 🗒️ POC Snapshots (<https://vitest.dev/guide/snapshot.html>)
- [ ] Task -> 🗒️ POC Usage (<https://vitest.dev/api/vi.html#vi-fn>)
- [ ] Task -> 🗒️ POC Usage Inline Tests (for prototyping)
- [ ] Task -> 🗒️ POC browser mode (<https://vitest.dev/config/#coverage-perfile>)
- [ ] Task -> 🗒️ Review workspaces (<https://github.com/vitest-dev/vitest>)
- [ ] Task -> 🗒️ Setup Debugging (<https://vitest.dev/guide/debugging.html#vscode>)

#### UNIT TESTING - TESTING LIBRARY

- [ ] Read -> 📖 <https://kentcdodds.com/blog/avoid-nesting-when-youre-testing>
- [ ] Read -> 📖 <https://testing-library.com/docs/react-testing-library/api/#renderhook>
- [ ] Read -> 📖 <https://mswjs.io/blog/introducing-msw-2.0/>

- [ ] Task -> 🗒️ Create an MSW Diagram
- [ ] Task -> 🗒️ Process <https://testing-library.com/docs/learning/>
- [ ] Task -> 🗒️ Process OpenAPI docs

### K6

- [ ] Parse -> 📚 https://grafana.com/docs/k6/latest/

- [ ] Read -> 📖 https://developers.google.com/learn/pathways/web-vitals
- [ ] Read -> 📖 https://developers.google.com/search/docs/appearance/core-web-vitals

### Frameworks - Web Development

#### RTK

#### Ag Grid

- [ ] Learn -> ❔ Create flexbox approach to grid size
- [ ] Learn -> ❔ Expose the gridref to parents via useForwardRef (<https://react.dev/reference/react/useRef#examples-dom> example 4)
- [ ] Learn -> ❔ Get a responsive pattern
- [ ] Learn -> ❔ Understand generated HTML better see (<https://developer.chrome.com/docs/devtools/changes/>)
- [ ] Read -> 📖 <https://blog.ag-grid.com/ag-grid-cell-rendering-pipeline-with-typescript/>
- [ ] Read -> 📖 <https://blog.ag-grid.com/ag-grid-es-modules-and-commonjs/>
- [ ] Read -> 📖 <https://blog.ag-grid.com/using-playwright-to-test-ag-grid-react-apps/>
- [ ] Read -> 📖 <https://blog.ag-grid.com/vuestic-ui-app-with-ag-grid-tutorial/>
- [ ] Task -> 🗒️ <https://indepth.dev/tutorials/angular/indepth-guide-ag-grid-styles-customization>

#### REACT

- [ ] Task -> 🗒️ Manage focus with useRef ref.current.focus(<https://react.dev/reference/react/useRef#examples-dom>)
- [ ] Task -> 🗒️ Review React patterns note
- [ ] Task -> 🗒️ Look for cases where you are conditionally manipulating state; replace with a component reducer [Linter Candidate]
- [ ] Task -> 🗒️ Include immer for object manipulation [Linter Candidate]
- [ ] Task -> 🗒️ POC one of these
  - <https://github.com/bvaughn/react-window>
  - <https://github.com/bvaughn/react-virtualized/tree/master>
  - <https://github.com/ctrlplusb/react-sizeme>

##### REACT - "Alternate Title; get a responsive AG grid pattern"

- [ ] Task -> 🗒️ <https://react-styleguidist.js.org/docs/getting-started> (do the demo)

- [ ] Learn -> ��� React Profiler
- [ ] Learn -> ❔ Try to put state in hooks and make components presentational?
- [ ] Learn -> ❔ How to keep track of what is rendering when?
- [ ] Learn -> ❔ Explore use cases for non-blocking transitions <https://react.dev/reference/react/useTransition> (maybe that sort menu )
- [ ] Learn -> ❔ Interesting approach to selectors <https://github.com/reduxjs/reselect>

- [ ] Habit -> 🏃 initialize state with functions [Linter Candidate]

- [ ] Habit -> 🏃 managing ids with useId <https://react.dev/reference/react/useId#generating-ids-for-several-related-elements> [Linter Candidate]
- [ ] Habit -> 🏃 manage focus with useRef ref.current.focus(<https://react.dev/reference/react/useRef#examples-dom>)

##### REACT - TOOLING

- [ ] Learn -> ❔ <https://github.com/storybookjs/storybook/tree/master/addons/info>
- [ ] Learn -> ❔ <https://github.com/welldone-software/why-did-you-render>

##### REACT - PURE COMPONENTS

- [ ] Learn -> ❔ <https://react.dev/reference/react/PureComponent>
- [ ] Habit -> 🏃 Implement in codebase
- [ ] Task -> 🗒️ Define how to measure this (prefer-stateless-function react linter) [Linter Candidate]

##### REACT - USECONTEXT

- [ ] Habit -> 🏃 Use this more
- [ ] Task -> 🗒️ Identify good use cases [Linter Candidate]

##### REACT - USEREDUCER

- [ ] Task -> 🗒️ Find multiple useStates; replace with useReducer [Linter Candidate]
- [ ] Learn -> ❔ Combine with useImmer for a specific outcome (<https://react.dev/reference/react/useReducer#examples-basic>)

##### REACT - REREAD

- https://react.dev/reference/react-dom/components
- https://react.dev/learn/referencing-values-with-refs#recap
- https://www.robinwieruch.de/react-hooks-fetch-data/
- https://react.dev/reference/react/useSyncExternalStore
- https://react.dev/learn/removing-effect-dependencies#move-static-objects-and-functions-outside-your-component
- https://react.dev/reference/react-dom/components/common#dragevent-handler
- "Note to self; begin a sandbox capability approach after this"

##### REACT - REACT QUERY

- [ ] Read -> 📖 Community Resources; a second time <https://tanstack.com/query/latest/docs/react/community/lukemorales-query-key-factory>
- [ ] Read -> 📖 <https://github.com/TanStack/query/discussions/5279>
- [ ] Read -> 📖 Comments Threads: <https://tkdodo.eu/blog/breaking-react-querys-api-on-purpose>
- [ ] Read -> 📖 Comment Threads <https://tanstack.com/query/latest/docs/react/community/tkdodos-blog>

- [ ] Task -> 🗒️ POC (Conditional Gets) <https://tanstack.com/query/latest/docs/react/guides/disabling-queries#lazy-queries>
- [ ] Task -> 🗒️ POC (Initial Data) <https://tanstack.com/query/latest/docs/react/guides/initial-query-data#initial-data-function>

- [ ] Task -> 🗒️ Organize bookmarks/references
- [ ] Task -> 🗒️ See movie Key pattern <https://tanstack.com/query/latest/docs/react/examples/react/offline>

---

# Tools

## Database Tools

### Dbeaver

> rough plan read sequentially for ~ 1 week; skip irrelevant sections; review if you want to jump to good sections after 1 week

- [ ] Parse -> 📚 https://dbeaver.com/docs/dbeaver/Shortcuts/

#### Dbeaver -- Projects

- [ ] Task -> 🗒️ Create a SAM project
  - [ ] Task -> 🗒️ Create Export to JSON that can be used as seed data
  - [ ] Task -> 🗒️ query timbr https://docs.timbr.ai/doc/docs/getting-started/integration/dbeaver (does not require Compute?)
  - [ ] Task -> 🗒️ Create a task to generate Entity Relationship Diagrams
  - [ ] Task -> 🗒️ Do some Databricks Processing via Dbeaver
  - [ ] Task -> 🗒️ Import a table from databricks to our database (POC)
- [ ] Task -> 🗒️ Maybe https://dbeaver.com/docs/dbeaver/AI-Smart-Assistance/#understanding-the-ai-integration-in-dbeaver

- [ ] Task -> 🗒️ setup mongo connection

## Developer Tools

### Plop

- [ ] Task -> 🗒️ Create a Profile
- [ ] Task -> 🗒️ Append don't approve
- [ ] Task -> 🗒️ Setup + use <https://marketplace.visualstudio.com/items?itemName=SamKirkland.plop-templates>
- [ ] Task -> 🗒️ Read <https://github.com/priceline/design-system/blob/29bd84419ebce9d568e1108e7d7dbc54f89be0f3/tools/boilerplate/plopfile.js#L1>
- [ ] Task -> 🗒️ Process Github for plop files

### AI TOOLS

- [ ] Task -> 🗒️ Setup custom instructions on chat gpt profile
- [ ] Read -> 📖 https://docs.github.com/en/copilot/using-github-copilot/getting-code-suggestions-in-your-ide-with-github-copilot?tool=vscode
- [ ] Task -> 🗒️ POC https://github.com/github/github-mcp-server

### HUSKY

### Spectral (Open API Styling)

- [ ] Read -> 📖 https://meta.stoplight.io/docs/spectral/674b27b261c3c-overview

## REFACTORING

- [ ] Read -> 📖 <https://marketplace.visualstudio.com/items?itemName=cmstead.jsrefactor>
- [ ] Read -> 📖 <https://code.visualstudio.com/Docs/languages/typescript#_refactoring>

## SNIPPETS

- [ ] Task -> 🗒️ Get a hook snippet for react

## MARKDOWN

- [ ] Read -> 📖 <https://github.github.com/gfm/> _(maybe)_
- [ ] Read -> 📖 <https://cirosantilli.com/markdown-style-guide/> _(maybe)_
- [ ] Learn -> ❔ become competent at program output to markdown conversions

### Markdown Setup Workspace

- [ ] Task -> 🗒️ Extract Selection into its own file
- [ ] Task -> 🗒️ Setup Tooling for Tables
- [ ] Task -> 🗒️ Look for an ADO flavored preview

#### Habit -> 🏃 Markdown Vscode tricks

### MERMAID

- [ ] Task -> 🗒️ Experiment with [Sankey](https://mermaid.js.org/syntax/sankey.html)

#### Mermaid -> Tooling Strategy

- [ ] Task -> 🗒️ React Component to Class Diagram
- [ ] Task -> 🗒️ Dependency Diagrams in Rush (via class diagrams/UML)
- [ ] Task -> 🗒️ Identify use case for Quadrant charts
- [ ] Learn -> ❔ Code to Mermaid tools

## IDEs

### Visual Studio

- [ ] Parse -> 📚 [notes](../project_notes/api_dev_onboarding/visual_studio_learning.md)
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/visualstudio/profiling/?view=vs-2022
- [ ] Task -> 🗒️ Remote Debugging https://learn.microsoft.com/en-us/visualstudio/debugger/remote-debugging-azure?view=vs-2022
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.1
- [ ] Read -> 📖 https://github.com/VsVim/VsVim/wiki/FAQ#how-can-i-temporarily-disable-vsvim

### VScode

- [ ] Task -> 🗒️ <https://thisdavej.com/build-an-amazing-markdown-editor-using-visual-studio-code-and-pandoc/>
- [ ] Task -> 🗒️ Setup SonarLint
- [x] Task -> 🗒️ Replace default profile with base
- [ ] Task -> 🗒️ Configure Commit Templates https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration "commit.template"
- [ ] Task -> 🗒️ Clean the app folder

- [ ] Read -> 📖 https://www.smashingmagazine.com/2018/01/visual-studio-code/
- [ ] Read -> 📖 https://www.roboleary.net/2022/02/28/vscode-keyboard-fu-custom-keyboard-shortcuts.html

- [x] Learn -> ❔ ~~Deep Dive Emmet commands~~
- [x] Learn -> ❔ Deep dive terminal commands
- [ ] Learn -> ❔ How to highlight a section of code
- [ ] Learn -> ❔ Excalidraw
- [ ] Learn -> ❔ Clean out app data roaming

- [ ] Habit -> 🏃 use folding regions //#region //#endregion

  MAPPINGS/ERGS

- [ ] Task -> 🗒️ Automate branch naming

#### VScode - Extensions

- [ ] Read -> 📖 https://marketplace.visualstudio.com/items?itemName=vsls-contrib.gitdoc
- [ ] Read -> 📖 https://marketplace.visualstudio.com/items?itemName=foam.foam-vscode
- [ ] Task -> 🗒️ https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarcloud

### Chrome

- [ ] Parse -> 📚switch to firefox becuase of adblock

- [ ] Task -> 🗒️ Plan workflow improvements
- [ ] Task -> 🗒️ Dir(JSPath)

- [ ] Learn -> ❔ utilize vimium for bookmarks selection
- [ ] Learn -> ❔ Persist CSS change (requires source mapping)
- [ ] Learn -> ❔ Begin using this: <https://developer.chrome.com/docs/devtools/changes/>

- [ ] Habit -> 🏃 manage event listeners here

#### Chrome Extensions

- [ ] Task -> 🗒️ Give it a try <https://github.com/AndrewWalsh/openapi-devtools>

#### Chrome Network Tab

- [ ] Habit -> 🏃 resend requests for debugging
- [ ] Task -> 🗒️ find and read docs

#### Chrome HOT keys

- [ ] Habit -> 🏃 move from elements to style (TABx4) Review This

- [ ] Learn -> ❔ Improve Elements Flow
- [ ] Habit -> 🏃 Improve Elements Flow
- [ ] Habit -> 🏃 CTRL+SHIFT+A to search across all tabs

## GITHUB

- [ ] Task -> 🗒️ Setup a pull all command <https://stackoverflow.com/questions/10312521/how-do-i-fetch-all-git-branches>
- [ ] Task -> 🗒️ Dev Containers
- [ ] Task -> 🗒️ Consider updating username https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-user-account-settings/changing-your-github-username

- [ ] Parse -> 📚 org owner permissions
- [ ] Learn -> ❔ How to apply server side hooks in github

### GITHUB SEARCH

- [ ] Task -> 🗒️ add spell book for building queries in browser
- [ ] Task -> 🗒️ view single user activity https://docs.github.com/en/search-github/searching-on-github/searching-issues-and-pull-requests#search-by-a-user-thats-involved-in-an-issue-or-pull-request

### GITHUB GISTs

- [ ] Task -> 🗒️ Automate (GIST) Publishing - Symlinks + Publishing Task
- [ ] Task -> 🗒️ Improve Previews

### GITHUB CLI

- [ ] Parse -> 📚 https://cli.github.com/manual/
- [ ] Read -> 📖 https://github.com/fchimpan/gh-workflow-stats

#### GH DASH

- [ ] Task -> 🗒️ Add a query for recently merged PRs
- [ ] Task -> 🗒️ Add a repo based query

### GITHUB API

- [ ] Task -> 🗒️ Authenticated Github API requests (<https://docs.github.com/en/rest/overview/authenticating-to-the-rest-api?apiVersion=2022-11-28>)
  - [ ] https://git-scm.com/book/en/v2/GitHub-Scripting-GitHub
  - [ ] https://docs.github.com/en/rest/actions/cache?apiVersion=2022-11-28

### GITHUB WEBHOOKS

- [ ] Task -> 🗒️ Explore useful webhooks
- [ ] Read -> 📖 https://docs.github.com/en/webhooks/about-webhooks

### GITHUB ACTIONS

- [ ] Task -> 🗒️ linting https://github.com/rhysd/actionlint
- [ ] Task -> 🗒️ https://dev.to/aksrao1998/trigger-workflows-of-different-repositories-and-exchange-data-5a1p
- [ ] Task -> 🗒️ Dev Kit <https://github.com/actions/toolkit>

- [ ] Read -> 📖 https://github.com/rhysd/actionlint

#### GITHUB ACTIONS - DOCKER

- [ ] Task -> 🗒️ Build Attestation https://docs.docker.com/build/ci/github-actions/attestations/
- [ ] Task -> 🗒️ https://github.com/marketplace/actions/docker-metadata-action
- [ ] Task -> 🗒️ https://github.com/marketplace/actions/docker-buildx-bake
- [ ] Task -> 🗒️ https://github.com/docker/build-push-action

### GITHUB ACTIONS - YAML

- [ ] Learn -> ❔ Review YAML specification [ref](https://thisdavej.com/getting-started-with-yaml-in-node-js-using-js-yaml/)
  - Anchors
  - Merge Format

## Developer Tools - Web Dev

### ESLINT

- [ ] Learn -> ❔ Naming conventions <https://github.com/typescript-eslint/typescript-eslint/blob/main/packages/eslint-plugin/docs/rules/naming-convention.md#enforces-naming-conventions-for-everything-across-a-codebase-naming-convention>
- [ ] Learn -> ❔ Improve the message formatting
- [ ] Learn -> ❔ Familiarize with cli interface
- [ ] Learn -> ❔ AST Selectors <https://eslint.org/docs/latest/extend/selectors>
- [ ] Learn -> ❔ See <https://ts-ast-viewer.com>

- [ ] Habit -> 🏃 AST Selectors <https://eslint.org/docs/latest/extend/selectors>

- [ ] Task -> 🗒️ Disallow inline formatting 'will prevent disabling the linter' reportUnusedDisableDirectives
- [ ] Task -> 🗒️ Add root: true <https://eslint.org/docs/latest/use/configure/configuration-files#cascading-and-hierarchy>
- [ ] Task -> 🗒️ Add noInlineConfig: true <https://eslint.org/docs/latest/use/configure/rules#disabling-inline-comments>

### PNPM

- [ ] Task -> 🗒️ Link and edit ux-react-components <https://pnpm.io/cli/link#replace-an-installed-package-with-a-local-version-of-it>
- [ ] Task -> 🗒️ Setup autocompletion
- [ ] Task -> 🗒️ Try using pnpm patch
  - [ ] Read -> 📖 <https://youtu.be/0GjLqRGRbcY>
  - [ ] Read -> 📖 <https://pnpm.io/cli/patch>
- [ ] Task -> 🗒️ Review Workspace Examples <https://pnpm.io/workspaces#usage-examples>

### PACKAGE.JSON

- [ ] Learn -> ❔ Npm workspaces

  - [ ] Task -> 🗒️ Config registries (theory need to add a write token)
  - [ ] Task -> 🗒️ "unsupportd workspace error" ?solve with pnpm

- [ ] Learn -> ❔ <https://lfx.rushstack.io/> (doesn't work?)
- [ ] Task -> 🗒️ Set Default editor to vscode
- [ ] Task -> 🗒️ What populates node_modules/.bin ? "the bin setting on package.json when publishing" - this populates the PATH when npm/pnpm is run - lets you run eslint for example

### NPM PACKAGES

- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/bundlemon
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/pretty-logger
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/@rushstack/trace-import
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/pretty-quick
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/depcheck
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/semver
- [ ] Task -> 🗒️ POC usage https://docs.npmjs.com/cli/v9/configuring-npm/package-json#config
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/react-intersection-observer
- [ ] Task -> 🗒️ POC usage https://typedoc.org/guides/overview/
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/mermaid
- [ ] Task -> 🗒️ POC usage https://github.com/mermaid-js/mermaid-cli
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/easy-table
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/inquirer
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/winston
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/node-watch
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/handlebars
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/weather-js
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/http-server
- [ ] Task -> ���️ POC usage https://www.npmjs.com/package/got
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/play-sound
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/js-yaml
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/nodemon
- [ ] Task -> 🗒️ POC usage https://www.npmjs.com/package/octokit
- [ ] Task -> 🗒️ POC usage https://github.com/browserify/browserify

### Vite

- [ ] Learn -> ❔ <https://vitest.dev/guide/why.html>

### Vite Press (SSG)

- [ ] Read -> 📖 [vitepress](https://vitepress.dev/guide/what-is-vitepress)

---

# Computer

## PDF MANAGEMENT

- [ ] Task -> 🗒️ identify pdf tools
- [ ] Task -> 🗒️ jpg to pdf from cli
- [ ] Task -> 🗒️ combine pdfs from cli or js
- [ ] Task -> 🗒️ create generic tools

## WINDOWS/COMPUTER

- [ ] Task -> 🗒️ Try https://github.com/flameshot-org/flameshot
- [ ] Task -> 🗒️ Teams: Change card popup
- [ ] Task -> 🗒️ Set startup programs

## CLI

- [x] Habit -> 🏃 use --help followed by man before google
- [x] Habit -> 🏃 get comfortable with `xargs` usage
- [ ] Task -> 🗒️ build a systemd service https://www.youtube.com/watch?v=oLEgBLJ9a2A

### CLI Tooling

- [ ] Parse -> 📚 https://github.com/alebcay/awesome-shell
- [x] Parse -> 📚 https://github.com/rothgar/awesome-tuis
- [x] Task -> 🗒️ write a spell book
- [ ] Parse -> 📚 compgen -c "all shell commands"

- [x] Task -> 🗒️ setup z https://github.com/rupa/z

- [ ] Learn -> ❔ develop a package management Strategy
- [ ] Parse -> 📚 review things you want to build from source and automate it
- [ ] Task -> 🗒️ durfetch

- [ ] Read -> 📖 https://abseil.io/resources/swe-book (LONG)
- [ ] Read -> 📖 https://github.com/Akianonymus/gdrive-downloader
- [ ] Read -> 📖 `getconf -a`
- [ ] Read -> 📖 https://github.com/ajeetdsouza/zoxide
- [ ] Read -> 📖 https://github.com/darrenburns/posting (Http Client)
- [ ] Read -> 📖 https://github.com/italolelis/reachable
- [ ] Read -> 📖 https://github.com/juan-leon/lowcharts
- [ ] Read -> 📖 https://github.com/labbots/google-drive-upload
- [ ] Read -> 📖 https://github.com/pemistahl/grex
- [ ] Read -> 📖 https://github.com/s0rg/crawley
- [ ] Read -> 📖 https://github.com/sindresorhus/is-up-cli
- [ ] Read -> 📖 https://github.com/sindresorhus/sparkly-cli
- [ ] Read -> 📖 https://github.com/stevemao/awesome-git-addons#readme
- [ ] Read -> 📖 https://github.com/zquestz/s (setup for perplexity)
- [ ] Read -> 📖 https://manpages.ubuntu.com/manpages/xenial/man1/notify-send.1.html
- [ ] Task -> 📖 https://github.com/casey/just
- [ ] Read -> 📖 https://github.com/rasjonell/dashbrew
- [ ] Read -> 📖 https://github.com/ymtdzzz/otel-tui (combine with a docker container)

#### CLI Tooling - Fzf

- [x] Read -> 📖 https://github.com/junegunn/fzf
- [x] Task -> 🗒️ review existing alias
- [x] Task -> 🗒️ ~consider replacing atuin~ Atuin uses SQLITE which is nice
- [x] Task -> 🗒️ install latest
- [x] Task -> 🗒️ write up a sample doc

- [x] Task -> 🗒️ POC and take notes https://junegunn.github.io/fzf/search-syntax/
- [x] Task -> 🗒️ write custom commands
- [x] Task -> 🗒️ ideate on header https://junegunn.github.io/fzf/reference/#header
- [ ] Task -> 🗒️ do a write up of this https://junegunn.github.io/fzf/tips/ripgrep-integration/

- [ ] Task -> 🗒️ review https://junegunn.github.io/fzf/shell-integration/ - Personal Computer
- [x] Task -> 🗒️ review https://junegunn.github.io/fzf/shell-integration/ - Work Computer (v0.62.0)
- [x] Task -> 🗒️ integrate with z https://junegunn.github.io/fzf/examples/directory-navigation/

#### CLI Tooling - Knowledge Bases

- [ ] Read -> 📖 https://github.com/Piotr1215/dotfiles/blob/master/scripts/__app_shortcuts_help.sh

#### CLI Tooling - Nushell

- [ ] Parse -> 📚 https://www.nushell.sh/

#### CLI Tooling - Trippy

- [ ] Read -> 📖 https://trippy.rs/start/features/

#### CLI Tooling - Starship

- [ ] Task -> 🗒️ Adjust Starship git_status symbols
- [ ] Task -> 🗒️ Adjust Starship to show insert vs normal mode

#### CLI USAGE + Unix Fundamentals

> Get to the point these tools are second nature

- [ ] Task -> use vanilla UNIX; don't rely on bash aliases
- [ ] Parse -> 📚 run `cat /etc/shells`
- [ ] Read -> 📖 `man bash`
- [ ] Parse -> 📚 `help -d` bash built-in commands
- [ ] Learn -> ❔ redirection https://github.com/jlevy/the-art-of-command-line/blob/6b50745d2e788add2e8f1ed29010e72659a9a074/README.md?plain=1#L147
- [ ] Learn -> ❔ exec
  - [ ] Task -> 🗒️ Get theme working properly
  - [ ] Read -> 📖 https://jqlang.github.io/jq/manual/
- [ ] Learn -> ❔ cut
- [ ] Learn -> ❔ ffmpg
- [ ] Learn -> ❔ jobs - `{command} &` `job fg bg kill` `ctrl+z ctrl+c`
- [ ] Learn -> ❔ shuff
- [ ] Learn -> ❔ yq
- [ ] Parse -> 📚 hostname
- [ ] Learn -> ❔ declare
- [x] Learn -> ❔ grep
- [x] Learn -> ❔ sort
- [x] Task -> 🗒️ ~https://cmdchallenge.com/ - Review Solution~
- [x] Task -> 🗒️ ~https://cmdchallenge.com/~

#### CLI USAGE + Dotfile Collections

- [ ] Parse -> 📚 https://www.chezmoi.io/

#### CLI USAGE + Lazygit

- [ ] Read -> 📖 https://github.com/jesseduffield/lazygit/tree/master/docs
- [ ] Read -> 📖 https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md

- [ ] Task -> 🗒️ write a custom command - AUTO commit style

#### CLI USAGE + NeoVim

#### CLI USAGE + BASH

- [ ] Task -> 🗒️ https://github.com/koalaman/shellcheck
- [ ] Read -> 📖 https://github.com/koalaman/shellcheck/blob/master/README.md#user-content-gallery-of-bad-code
- [ ] Task -> 🗒️ build out autin db with bash comments

#### CLI USAGE - Yazi

- [ ] Task -> 🗒️ Yank from file preview
- [ ] Task -> 🗒️ pdf preview
- [ ] Task -> 🗒️ Disable/Remap the enter key

### CLI USAGE + Wezterm

> Does not support undercurl for spell check

### CLI USAGE + Allactrity

- [ ] Parse -> 📚 https://www.youtube.com/watch?v=6iHgfXzjx9M&list=LL&index=2

### CLI USAGE + Windows Terminal

- [ ] Task -> 🗒️ ~Add shortcuts for pane management~ (avoid panes)
- [ ] Task -> 🗒️ Consume https://windowsterminalthemes.dev/
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/windows/terminal/command-line-arguments?tabs=windows
- [ ] Parse -> 📚 https://learn.microsoft.com/en-us/windows/terminal/

## WSL - Ubuntu

- [ ] Task -> 🗒️ WSL does not recognize the 2nd gpu
- [ ] Task -> 🗒️ Review and update [wsl doc](../knowledge-graph/notes_drafts/wsl_notes.md)
- [ ] Task -> 🗒️ .profile file ? https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database
- [ ] Read -> 📖 https://github.com/microsoft/WSL-DistroLauncher
- [ ] Read -> 📖 https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/

### WSL - Ubuntu - Vscode Setup - Profile

- [ ] Task -> 🗒️ Bring in only necessary extensions

### WSL - Ubuntu - Vscode Setup

- [ ] Task -> 🗒️ Setup Workspace https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode#update-your-linux-distribution
- [ ] Read -> 📖 https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack
- [ ] Read -> 📖 https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl
- [ ] Read -> 📖 https://code.visualstudio.com/docs/remote/wsl
- [ ] Read -> 📖 https://code.visualstudio.com/blogs/2020/03/02/docker-in-wsl2

### WSL - Ubuntu - Linux utils

- [ ] Task -> 🗒️ paste into clipboard https://thisdavej.com/add-emoji-to-your-node-projects-with-node-emoji/
- [ ] Task -> 🗒️ add exclude lists to the search util
- [x] Task -> 🗒️ Install gdu
- [ ] Task -> 🗒️ Figure out a tarball backup process https://learn.microsoft.com/en-us/windows/wsl/use-custom-distro
- [ ] Read -> 📖 https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal
- [ ] Learn -> ❔ systemd
- [ ] Learn -> ❔ stop a command (like search) on first output
- [ ] Learn -> ❔ service commands
- [ ] Learn -> ❔ /proc/sys/fs/binfmt_misc/WSLInterop file
- [ ] Learn -> ❔ /proc/sys/fs/binfmt_misc folder
- [ ] Read -> 📖 https://github.com/wagoodman/dive
- [ ] Read -> 📖 https://github.com/orf/gping
- [ ] Read -> 📖 https://github.com/bcicen/ctop
- [ ] Task -> 🗒️ https://github.com/freeCodeCamp/devdocs

# Foundations

## MISC READING

- [ ] Read -> 📖 https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf

## WEBDEV CONCEPTS

- [ ] Read -> 📖 <https://developer.mozilla.org/en-US/docs/Web/Security>
- [ ] Read -> 📖 <https://developer.mozilla.org/en-US/docs/Web/Events>
- [ ] Read -> 📖 <https://developer.mozilla.org/en-US/docs/Web/API/Request>

## Docker

- [ ] Parse -> 📚 https://hub.docker.com/search?q=&type=image&image_filter=official
- [ ] Parse -> 📚 https://hub.docker.com/search?q=&image_filter=store

- [ ] Read -> 📖 https://blog.diogomonica.com//2017/03/27/why-you-shouldnt-use-env-variables-for-secret-data/

### Docker - Misc Tools

- [ ] Parse -> 📚 https://github.com/nicolaka/netshoot (network debugging)

### Docker - Docs - Multi Stage + Platform

- [ ] Read -> 📖 https://aka.ms/containerfastmode (read 3x) 2
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/aspnet/core/security/docker-compose-https?view=aspnetcore-3.1

### Docker - Docs - Full

- [ ] Read -> 📖 https://docs.docker.com/reference/

  - [ ] https://docs.docker.com/reference/dockerfile/

- [ ] Parse -> 📚 https://www.docker.com/resources/trainings/
- [ ] Parse -> 📚 https://hub.docker.com/search?q=&type=plugin
- [ ] Task -> ���️ https://www.docker.com/resources/unlocking-power-of-docker-and-kubernetes-together-webinar/

### Docker -- Bake

- [ ] Task -> 🗒��� Diagram, bake vs compose, build args, container envs
- [ ] Task -> 🗒️ Review how to get git context

### Docker -- Usage

- [ ] Task -> 🗒️ Learn and alias the format flag https://docs.docker.com/reference/cli/docker/container/ls/#format
  - [ ] examples https://docs.docker.com/reference/cli/docker/container/ls/

### Docker -- Usage -- Lab

- [ ] Task -> 🗒️ better log command - create bash commands to get network info on containers

  - https://docs.docker.com/reference/cli/docker/inspect/
  - DRAFT: docker container ls -qa | xargs docker inspect --format='table {{range .NetworkSettings.Networks}}\t{{.IPAddress}}\t{{end}}'

- [ ] Task -> 🗒️ maybe https://learn.microsoft.com/en-us/training/modules/use-docker-container-dev-env-vs-code/
- [ ] Task -> 🗒️ make small config modifications to the daemon such as `log-opts` https://docs.docker.com/config/containers/logging/configure/
- [ ] Task -> 🗒️ customize cli format https://docs.docker.com/engine/reference/commandline/cli/#customize-the-default-output-format-for-commands
- [ ] Task -> 🗒️ [Private repos in docker container](https://docs.docker.com/build/building/secrets/#git-authentication-for-remote-contexts) POC
- [ ] Task -> 🗒️ Try this https://docs.docker.com/config/otel/
- [ ] Task -> 🗒️ Review how this is done in CI/CD `docker cp` https://docs.docker.com/reference/cli/docker/container/cp/
- [ ] Task -> 🗒️ Poke the storage drivers inside wsl https://docs.docker.com/storage/storagedriver/#sharing-promotes-smaller-images
- [ ] Task -> 🗒️ Create Webhook from Azure Portal
- [ ] Task -> 🗒️ Attempt AZ CLI inside a container
- [ ] Task -> 🗒️ (maybe) https://docs.docker.com/config/daemon/prometheus/
- [ ] Read -> 📖 https://docs.docker.com/reference/cli/docker/compose/config/
- [ ] Learn -> ❔ `docker stats` command

### Docker -- Usage -- Docker Vscode Focus

- [ ] Parse -> 📚 Docker Extension Settings
- [ ] Read -> 📖 https://code.visualstudio.com/docs/containers/reference
- [ ] Task -> 🗒️ Deploy from local to Lab

### Docker -- Usage -- docker compose

- [ ] Parse -> 📚 https://github.com/orgs/dockersamples/repositories

## GIT PROTOCOL

- [ ] Task -> 🗒️ Setup a Commit Template+Hook
- [ ] Read - 📖 https://martinfowler.com/articles/branching-patterns.html (60 pages)
- [ ] Parse -> 📚 https://gitbutler.com/
- [ ] Learn -> ❔ Working tree process
- [ ] Learn -> ❔ Rebasing commands

## Auth + Security

### Cyber Security

- [ ] Parse -> 📚 https://www.hacksplaining.com/lessons

### Azure Active Directory + Entra Id

- [ ] Learn -> ❔ More about group claims+token configuration
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-app-types
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth2-auth-code-flow
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth2-client-creds-grant-flow
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth2-device-code
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth2-on-behalf-of-flow
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth2-implicit-grant-flow
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-oauth-ropc
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity-platform/v2-protocols-oidc
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/entra/identity/app-provisioning/check-status-user-account-provisioning

### LDAP

- [ ] Read -> 📖 https://github.com/MegaManSec/LDAP-Monitoring-Watchdog1

### MSAL

note: "currently using msal-browser and msal-react"

- [ ] Read -> 📖 https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/samples/msal-react-samples/react-router-sample
- [ ] Read -> 📖 https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/samples/msal-react-samples/b2c-sample
- [ ] Read -> 📖 https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/samples/msal-react-samples/typescript-sample

## MICROSOFT GRAPH

- [ ] Learn -> ❔ Explore methods <https://developer.microsoft.com/en-us/graph/graph-explorer>
- [ ] Learn -> ❔ <https://learn.microsoft.com/en-us/training/paths/m365-msgraph-associate/>
- [ ] Task -> 🗒️ try https://learn.microsoft.com/en-us/graph/cli/overview
- [ ] Parse -> 📚 https://developer.microsoft.com/en-us/graph/graph-explorer

---

# Infrastructure

## Infrastructure - Databricks

Reading Order

- [ ] Read -> 📖 https://learn.microsoft.com/en-us/azure/databricks/dev-tools/sdk-python
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/azure/databricks/notebooks/

- [ ] Parse -> 📚 `databricks -h` output
- [ ] Learn -> ❔ Make dbfs and local file system closer to the same https://learn.microsoft.com/en-us/azure/databricks/dev-tools/cli/fs-commands
- [ ] Parse -> 📚 `databricks labs list`
- [ ] Task -> 🗒️ setup manpage for databricks

Resume Sequential Reading

- [ ] Read -> 📖 https://learn.microsoft.com/en-us/azure/databricks/databricksiq/

### Infrastructure - Tooling

## Infrastructure - Devops

### GOOGLE/RELEASE-PLEASE

- [ ] Task -> 🗒️ <https://github.com/googleapis/release-please>
- [ ] Task -> 🗒️ <https://github.com/googleapis/release-please/blob/main/docs/manifest-releaser.md>
- [ ] Task -> 🗒️ <https://github.com/googleapis/release-please/blob/main/docs/cli.md#bootstrapping>
- [ ] Task -> ���️ <https://github.com/google-github-actions/release-please-action>

### Terraform

- [ ] Vscode Tooling

## NGINX

- [ ] Learn -> ❔ Understand proxies better (HTTP and HTTPS)

## AZURE GENERAL

- [ ] Learn -> ❔ Connect to app registrations to grant types
- [ ] Task -> 🗒️ OpenID connect from github <https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure>
- [ ] Read -> 📖 https://techcommunity.microsoft.com/t5/azure-paas-blog/how-to-troubleshoot-cors-error-in-azure-api-management-service/ba-p/2241695

### Azure CLI

- [ ] Parse -> 📚 https://learn.microsoft.com/en-us/cli/azure/azure-cli-extensions-list
- [ ] Learn -> ❔ Azure CLI <https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli>
- [ ] Task -> 🗒️ https://learn.microsoft.com/en-us/cli/azure/interactive-azure-cli
- [ ] Task -> 🗒️ pipe useful commands into jqp and access via atuin

### Azure - Data API Builder

- [ ] Task -> 🗒️ investigate this command `azd init --template dab-azure-sql-quickstart` (seems like a dab azure template)

- [ ] Learn -> ❔ Automate entity creation
- [ ] Read -> 📖 reference section https://learn.microsoft.com/en-us/azure/data-api-builder/reference-configuration?tabs=http#schema
- [ ] Read -> 📖 https://learn.microsoft.com/en-us/azure/data-api-builder/deployment/

#### Azure - Data API Builder - POC

> Can't get this working. Only works in the tutorial. Can't connect to local

- [ ] Task -> ��️ run as dotnet project https://learn.microsoft.com/en-us/azure/data-api-builder/how-to-run-from-source

- [ ] Task -> 🗒️ run this locally (Linux) https://learn.microsoft.com/en-us/samples/azure-samples/dab-swa-library-demo/sample/
- [ ] Task -> ��️ connect to lab pg https://learn.microsoft.com/en-us/azure/data-api-builder/quickstart-postgresql

- [ ] Task -> 🗒️ complete in lab https://learn.microsoft.com/en-us/azure/data-api-builder/deployment/how-to-host-static-web-apps
- [ ] Task -> 🗒️ complete in lab (reference) https://learn.microsoft.com/en-us/azure/data-api-builder/quickstart-azure-sql
- [ ] Task -> 🗒️ POC an env var based setup https://learn.microsoft.com/en-us/azure/data-api-builder/how-to-use-environments

### Azure Container Instances

- [ ] Learn -> ❔ container instances vs container apps

### Azure Container Registry

- [ ] Parse -> 📚 https://naz-abinbev.datadoghq.com/dash/integration/30733/azure-container-apps?fromUser=false&refresh_mode=sliding&view=spans&from_ts=1715169500245&to_ts=1715173100245&live=true
- [ ] Task -> �����️ Explore Menus

### Azure Static Web App

- [ ] Read -> �� `az staticwebapp` modules
- [ ] Task -> 🗒️ install and try `swa` cli tools
- [ ] Read -> 📖 Review `staticwebapp.json` file

### APIOPs+APIM

- [ ] Read -> 📖 APIM API specification <https://learn.microsoft.com/en-us/rest/api/apimanagement/operation-groups?view=rest-apimanagement-2022-08-01> (VERY LONG)

## DATA DOG

- [ ] Task -> 🗒️ Collect Resources

- [ ] Parse -> 📚 `datadogRum` API methods
- [ ] Parse -> 📚 `azure.containerapps` metrics
- [ ] Parse -> 📚 https://www.youtube.com/playlist?list=PLdh-RwQzDsaM9Sq_fi-yXuzhmE7nOlqLE

## Postgres

---

# Misc

- [ ] Task -> 🗒️ Find PDFs https://github.com/charlax/professional-programming?tab=readme-ov-file#must-read-books
- [ ] Read -> 📖 https://product.hubspot.com/blog/practical-advice-for-new-software-engineers
- [ ] Read -> 📖 https://www.kitchensoap.com/2012/10/25/on-being-a-senior-engineer/
- [ ] Read -> 📖 https://henrikwarne.com/2015/04/16/lessons-learned-in-software-development/
- [ ] Read -> 📖 https://blog.juliobiason.me/thoughts/things-i-learnt-the-hard-way/
- [ ] Read -> ��� https://monicalent.com/blog/2019/06/03/absolute-truths-unlearned-as-junior-developer/
- [ ] Read -> 📖 https://knowledge.csc.gov.sg/ethos-issue-21/how-to-build-good-software/
- [ ] Read -> 📖 https://www.timsommer.be/famous-laws-of-software-development/
- [ ] Read -> 📖 https://matt.might.net/articles/what-cs-majors-should-know/
- [ ] Read -> 📖 https://adamj.eu/tech/2022/06/17/mike-actons-expectations-of-professional-software-engineers/
- [ ] Read -> 📖 https://vadimkravcenko.com/shorts/things-they-didnt-teach-you/
- [ ] Read -> 📖 https://paavandesign.com/blog/ostaulta/
- [ ] Read -> 📖 https://matthewgrohman.substack.com/p/want-an-unfair-advantage-in-your
- [ ] Read -> 📖 https://norvig.com/21-days.html
- [ ] Read -> 📖 https://urbit.org/blog/precepts
- [ ] Read -> 📖 https://embeddedartistry.com/blog/2018/04/26/embedded-rules-of-thumb/
- [ ] Read -> 📖 https://perell.com/essay/50-ideas-that-changed-my-life/
- [ ] Read -> 📖 https://mattrickard.com/reflections-on-10-000-hours-of-programming
- [ ] Read -> 📖 https://www.simplethread.com/20-things-ive-learned-in-my-20-years-as-a-software-engineer/
- [ ] Read -> 📖 https://www.oreilly.com/radar/the-traits-of-a-proficient-programmer/
- [ ] Read -> ��� https://www.mit.edu/~xela/tao.html
- [ ] Read -> 📖 https://www.effectiveengineer.com/blog/take-ownership-of-your-goals
- [ ] Read -> 📖 https://humanwhocodes.com/blog/2012/06/12/the-care-and-feeding-of-software-engineers-or-why-engineers-are-grumpy/
- [ ] Read -> 📖 https://blog.pragmaticengineer.com/the-product-minded-engineer/
- [ ] Read -> 📖 https://schlaf.medium.com/40-lessons-from-40-years-de39d2c622d6
- [ ] Read -> �� https://josebrowne.com/on-coding-ego-and-attention/
- [ ] Read -> 📖 https://www.themarginalian.org/2014/01/29/carol-dweck-mindset/
- [ ] Read -> 📖 https://fwouts.com/articles/great-software-engineer
- [ ] Read -> 📖 https://ronaldsvilcins.com/2020/12/10/programming-quotes/
- [ ] Read -> 📖 https://boz.com/articles/be-kind
- [ ] Read -> 📖 https://www.inc.com/marcel-schwantes/warren-buffett-says-this-is-1-simple-habit-that-separates-successful-people-from-everyone-else.html
- [ ] Read -> 📖 https://www.jjude.com/luck/
- [ ] Read -> 📖 https://world.hey.com/dhh/programmers-should-stop-celebrating-incompetence-de1a4725
- [ ] Read -> 📖 https://sive.rs/kimo
- [ ] Read -> 📖 https://salman.io/blog/momentum-motivation/
- [ ] Read -> 📖 https://puppycoding.com/2023/07/22/healthy-coding-habits/
- [ ] Read -> 📖 https://buttondown.com/hillelwayne/archive/advice-for-new-software-devs-whove-read-all-those/
- [ ] Read -> 📖 https://nondv.wtf/blog/posts/microservices-arent-the-problem-incompetent-people-are.html
- [ ] Read -> 📖 https://grugbrain.dev/
- [ ] Read -> 📖 https://www.theguardian.com/media/2013/apr/12/news-is-bad-rolf-dobelli
- [ ] Read -> 📖 https://frontside.com/blog/2016-07-07-the-conjoined-triangles-of-senior-level-development/
- [ ] Read -> 📖 https://medium.com/@daniel.heller/ten-principles-for-growth-69015e08c35b
- [ ] Read -> 📖 https://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-programmer/
- [ ] Read -> 📖 https://nickmchardy.com/2019/02/on-being-an-engineering-manager.html
- [ ] Read -> 📖 https://www.linkedin.com/pulse/career-advice-i-wish-had-25-shane-rodgers/
- [ ] Read -> 📖 https://80000hours.org/2019/04/career-advice-i-wish-id-been-given-when-i-was-young/
- [ ] Read -> 📖 https://robwalling.com/2007/06/27/why-good-developers-are-promoted-into-unhappiness/
- [ ] Read -> 📖 https://80000hours.org/advanced-series/
- [ ] Read -> 📖 https://jvns.ca/blog/senior-engineer/
- [ ] Read -> 📖 https://medium.com/swlh/from-coding-bootcamp-graduate-to-building-distributed-databases-29acbb723d8
- [ ] Read -> 📖 https://lethain.com/career-advice/
- [ ] Read -> 📖 https://yosefk.com/blog/evil-tip-avoid-easy-things.html
- [ ] Read -> 📖 https://blog.codinghorror.com/the-ultimate-code-kata/
- [ ] Read -> 📖 https://sergiomartins8.hashnode.dev/why-is-a-senior-engineer-senior
- [ ] Read -> 📖 https://addyosmani.com/blog/software-engineering-soft-parts/
- [ ] Read -> 📖 https://jes.al/2022/07/how-to-own-your-growth-as-a-software-engineer/
- [ ] Read -> 📖 https://codefol.io/posts/the-forty-year-programmer/
- [ ] Read -> 📖 https://www.zerobanana.com/essays/living-in-the-future/
- [ ] Read -> 📖 https://tomcritchlow.com/2023/04/26/career-maps/
- [ ] Read -> 📖 https://www.reddit.com/r/cscareerquestions/comments/4x0ugj/how_to_be_successful_at_amazon_or_any_other_large/
- [ ] Read -> 📖 https://vadimkravcenko.com/shorts/falsehoods-junior-developers-believe-about-becoming-senior/
- [ ] Read -> 📖 https://blog.eladgil.com/p/career-decisions
- [ ] Read -> 📖 https://www.zainrizvi.io/blog/why-software-engineers-like-woodworking/
- [ ] Read -> 📖 https://buster.medium.com/cognitive-bias-cheat-sheet-55a472476b18#.6temb6hyg
- [ ] Read -> ��� https://aws.amazon.com/builders-library/caching-challenges-and-strategies/
- [ ] Read -> 📖 https://queue.acm.org/detail.cfm?id=2841313
- [ ] Read -> 📖 https://google.github.io/eng-practices/review/reviewer/
- [ ] Read -> 📖 https://copyconstruct.medium.com/post-commit-reviews-b4cc2163ac7a
- [ ] Read -> �� https://mtlynch.io/code-review-love/
- [ ] Read -> 📖 https://mtlynch.io/human-code-reviews-1/
- [ ] Read -> 📖 https://www.dein.fr/posts/2015-02-18-maslows-pyramid-of-code-review
- [ ] Read -> 📖 https://www.morling.dev/blog/the-code-review-pyramid/
- [ ] Read -> 📖 https://web.hypothes.is/blog/code-review-in-remote-teams/
- [ ] Read -> 📖 https://www.raycast.com/blog/no-code-reviews-by-default
- [ ] Read -> 📖 https://programmingisterrible.com/post/139222674273/write-code-that-is-easy-to-delete-not-easy-to
- [ ] Read -> 📖 https://blog.codinghorror.com/the-ten-commandments-of-egoless-programming/
- [ ] Read -> 📖 https://blog.cleancoder.com/uncle-bob/2011/01/17/software-craftsmanship-is-about.html
- [ ] Read -> 📖 https://dev.to/michi/tips-on-naming-boolean-variables-cleaner-code-35ig
- [ ] Read -> 📖 https://github.com/Droogans/unmaintainable-code/blob/master/README.md
- [ ] Read -> 📖 https://www.karlsutt.com/articles/communicating-effectively-as-a-developer/
- [ ] Read -> 📖 https://dillonshook.com/what-do-you-visualize-while-programming/
- [ ] Read -> 📖 https://www.arp242.net/json-config.html
- [ ] Read -> 📖 https://beepb00p.xyz/configs-suck.html
- [ ] Read -> 📖 https://github.com/google/libphonenumber/blob/master/FALSEHOODS.md
- [ ] Read -> 📖 https://jeremymikkola.com/posts/2019_03_19_rules_for_autocomplete.html
- [ ] Read -> 📖 https://www.mjt.me.uk/posts/falsehoods-programmers-believe-about-addresses/
- [ ] Read -> 📖 https://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/
- [ ] Read -> 📖 https://sudhir.io/uuids-ulids
- [ ] Read -> 📖 https://ssoready.com/blog/engineering/truths-programmers-timezones/
- [ ] Read -> 📖 https://blog.codinghorror.com/rubber-duck-problem-solving/
- [ ] Read -> 📖 https://wiki.c2.com/?RubberDucking
- [ ] Read -> 📖 https://serce.me/posts/2021-10-14-the-five-lies-analysis
- [ ] Read -> 📖 https://www.kitchensoap.com/2014/11/14/the-infinite-hows-or-the-dangers-of-the-five-whys/
- [ ] Read -> 📖 https://product.hubspot.com/blog/bid/64771/post-mortems-at-hubspot-what-i-learned-from-250-whys
- [ ] Read -> 📖 https://jvns.ca/debugging-zine.pdf
- [ ] Read -> 📖 https://daniel.feldroy.com/posts/thirty-minute-rule
- [ ] Read -> 📖 https://stackoverflow.com/help/minimal-reproducible-example
- [ ] Read -> 📖 https://jvns.ca/blog/2022/08/30/a-way-to-categorize-debugging-skills/
- [ ] Read -> 📖 https://stackoverflow.com/questions/23865274/what-exactly-is-the-saff-squeeze-method-of-finding-a-bug
- [ ] Read -> 📖 https://jvns.ca/blog/2016/03/16/tcpdump-is-amazing/
- [ ] Read -> 📖 https://github.com/readme/guides/root-cause
- [ ] Read -> ���� https://anthonyhobday.com/sideprojects/saferules/
- [ ] Read -> 📖 https://hackernoon.com/education-of-a-programmer-aaecf2d35312
- [ ] Read -> 📖 https://overreacted.io/the-bug-o-notation/
- [ ] Read -> 📖 https://wiki.c2.com/?CompositionInsteadOfInheritance
- [ ] Read -> 📖 https://hackernoon.com/complexity-and-strategy-325cd7f59a92
- [ ] Read -> 📖 https://cacm.acm.org/practice/the-robustness-principle-reconsidered/
- [ ] Read -> 📖 https://catb.org/esr/writings/taoup/html/ch01s06.html#id2877610
- [ ] Read -> 📖 https://thereader.mitpress.mit.edu/habits-of-expert-software-designers/
- [ ] Read -> 📖 https://copyconstruct.medium.com/socat-29453e9fc8a6
- [ ] Read -> 📖 https://robotmoon.com/ssh-tunnels/
- [ ] Read -> 📖 https://nickjanetakis.com/blog/best-practices-around-production-ready-web-apps-with-docker-compose
- [ ] Read -> 📖 https://krausefx.com/blog/writing-automated-tests-for-your-documentation
- [ ] Read -> 📖 https://adr.github.io/
- [ ] Read -> 📖 https://github.com/npryce/adr-tools
- [ ] Read -> 📖 https://docs.divio.com/documentation-system/
- [ ] Read -> 📖 https://www.nyc.gov/assets/doh/downloads/pdf/em/gawande_checklist.pdf
- [ ] Read -> 📖 https://stackoverflow.blog/2021/12/23/best-practices-for-writing-code-comments/
- [ ] Read -> 📖 https://jmmv.dev/2021/04/always-be-quitting.html
- [ ] Read -> 📖 https://www.reproof.app/blog/document-first-then-build
- [ ] Read -> 📖 https://diataxis.fr/
- [ ] Read -> 📖 https://matklad.github.io/2021/02/06/ARCHITECTURE.md.html
- [ ] Read -> 📖 https://johnjago.com/great-docs/
- [ ] Read -> 📖 https://refactoringenglish.com/chapters/rules-for-software-tutorials/
- [ ] Read -> 📖 https://posthog.com/product-engineers/ab-testing-mistakes
- [ ] Read -> 📖 https://databasearchitects.blogspot.com/2021/06/what-every-programmer-should-know-about.html
- [ ] Read -> 📖 https://blog.robertelder.org/how-to-make-a-cpu/
- [ ] Read -> 📖 https://www.codetinkerer.com/2015/12/04/choosing-an-http-status-code.html
- [ ] Read -> 📖 https://httptoolkit.com/blog/http-wtf/
- [ ] Read -> 📖 https://webdevguild.com/blog/10-things-http/
- [ ] Read -> 📖 https://fasterthanli.me/articles/the-http-crash-course-nobody-asked-for
- [ ] Read -> 📖 https://linuxczar.net/sysadmin/philosophy-on-alerting/
- [ ] Read -> 📖 https://web.stanford.edu/class/msande91si/www-spr04/readings/week1/InternetWhitepaper.htm
- [ ] Read -> 📖 https://beesbuzz.biz/blog/2934-Advice-to-young-web-developers
- [ ] Read -> 📖 https://danicfilip.com/2020/red-flags-on-your-resume/?ck_subscriber_id=887770473
- [ ] Read -> 📖 https://huyenchip.com/2023/01/24/what-we-look-for-in-a-candidate.html
- [ ] Read -> 📖 https://interviewing.io/blog/why-you-shouldnt-list-certifications-on-linkedIn
- [ ] Read -> 📖 https://nautil.us/how-i-rewired-my-brain-to-become-fluent-in-math-235085/
- [ ] Read -> 📖 https://changelog.com/posts/one-sure-fire-way-to-improve-your-coding
- [ ] Read -> 📖 https://blog.hiphipjorge.com/tips-for-learning-programming/
- [ ] Read -> 📖 https://www.scientificamerican.com/blog/guest-blog/you-can-increase-your-intelligence-5-ways-to-maximize-your-cognitive-potential/
- [ ] Read -> 📖 https://jvns.ca/blog/good-questions/
- [ ] Read -> 📖 https://sizovs.net/frameworks/
- [ ] Read -> 📖 https://andymatuschak.org/books/
- [ ] Read -> 📖 https://www.supermemo.com/en/blog/twenty-rules-of-formulating-knowledge
- [ ] Read -> 📖 https://www.inc.com/jeff-haden/how-to-remember-anything-you-really-want-to-remember-backed-by-science.html
- [ ] Read -> 📖 https://ncase.me/remember/
- [ ] Read -> 📖 https://jvns.ca/blog/learn-how-things-work/
- [ ] Read -> 📖 https://jvns.ca/blog/2018/09/01/learning-skills-you-can-practice/
- [ ] Read -> 📖 https://www.smashingmagazine.com/2021/02/building-personal-learning-curriculum/
- [ ] Read -> ���� https://www.bennorthrop.com/Essays/2021/always-do-extra.php
- [ ] Read -> 📖 https://perell.com/essay/against-3x-speed/
- [ ] Read -> 📖 https://commoncog.com/the-problems-with-deliberate-practice/
- [ ] Read -> 📖 https://commoncog.com/tacit-knowledge-is-a-real-thing/
- [ ] Read -> 📖 https://www.pearlleff.com/in-praise-of-memorization
- [ ] Read -> 📖 https://jvns.ca/blog/2022/03/13/celebrate-tiny-learning-milestones/
- [ ] Read -> 📖 https://stackoverflow.blog/2022/11/23/why-writing-by-hand-is-still-the-best-way-to-retain-information/
- [ ] Read -> 📖 https://cse.buffalo.edu/~rapaport/howtostudy.html
- [ ] Read -> 📖 https://augmentingcognition.com/ltm.html
- [ ] Read -> 📖 https://andymatuschak.org/prompts/
- [ ] Read -> 📖 https://www.supermemo.com/en/blog/twenty-rules-of-formulating-knowledge
- [ ] Read -> 📖 https://controlaltbackspace.org/precise/
- [ ] Read -> 📖 https://borretti.me/article/effective-spaced-repetition
- [ ] Read -> ï¿½ï¿½ï¿½ï¿½ï¿½ https://abouttolearn.substack.com/p/anki-fy-your-life
- [ ] Read -> 📖 https://github.com/charlax/professional-programming?tab=readme-ov-file#vim
- [ ] Read -> 📖 https://medium.com/@rdsubhas/10-modern-software-engineering-mistakes-bc67fbef4fc8#.da6dvzyne
- [ ] Read -> 📖 https://blog.bolt.io/juicero/
- [ ] Read -> 📖 https://blog.bradfieldcs.com/you-are-not-google-84912cf44afb
- [ ] Read -> 📖 https://kerkour.com/overthinking
- [ ] Read -> 📖 https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you/
- [ ] Read -> 📖 https://www.evanmiller.org/mathematical-hacker.html
- [ ] Read -> 📖 https://everythingisdata.wordpress.com/2009/10/17/numbers-everyone-should-know/
- [ ] Read -> 📖 https://aseemthakar.com/how-to-build-a-second-brain-as-a-software-developer/
- [ ] Read -> 📖 https://sashachapin.substack.com/p/notes-against-note-taking-systems
- [ ] Read -> 📖 https://www.reproof.app/blog/notes-apps-help-us-forget
- [ ] Read -> 📖 https://dkb.show/post/life-is-not-short
- [ ] Read -> 📖 https://artofproblemsolving.com/blog/articles/dealing-with-hard-problems
- [ ] Read -> 📖 https://www.anup.io/p/invert-always-invert

- [ ] Parse -> 📚 https://taskfile.dev/
- [ ] Parse -> 📚 https://github.com/charlax/professional-programming?tab=readme-ov-file#postgres
- [ ] Task -> 🗒️ Apply probability distribution Two variables on graph script

## META Habits

## Dotfile Publishing

- [ ] Task -> 🗒️ Find Publishing channels?
- [ ] Task -> 🗒️ establish better screenshot process

## MISC READING

- [ ] Read -> 📖 The art of unix programming

### MISC READING - Game Theory Content

- [x] Read -> 📖 Thinking-strategically-the-competitive-edge-in-business-politics
- [ ] Task -> 🗒️ make gaussian charts from mean and std quickly
- [ ] Task -> 🗒️ page 239 of Thinking-strategically-the-competitive-edge-in-business-politics make an excel chart of this logic
- [ ] Task -> 🗒️ page 267 of Thinking-strategically-the-competitive-edge-in-business-politics make this chart and adjust the fall/spring split until decision changes

### MISC READING - Professional Programming Content

## Workspace Organization

- [ ] Habit -> 🏃 Begin taking single notes on topics in markdown
  - [ ] Task -> 🗒️ Setup Query Strategy
- [ ] Task -> 🗒️ Choose and document folder org method
- [ ] Task -> 🗒️ Review Para Method for notes org
- [ ] Task -> 🗒️ Move Completed Tasks out of doc (write a global command)
- [ ] Task -> 🗒️ parse notes draft

---
