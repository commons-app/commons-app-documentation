# AI Usage Guidelines

We aren't against the use of AI tools like Copilot, ChatGPT, Gemini, Claude Code, etc. as long as our contributors understand the intent behind their changes. However, given that _vibe coding_ often results in unintended changes and most of our reviewers are volunteers, contributions requiring several iterations of review would not be a good use of their time if the changes are significantly deviating from what is actually required to fix the issue. 

To ensure your contribution is respectful of the community’s time, please follow these guidelines:

- Before sending a pull request (PR), make sure each change is really needed. Actually try undoing each change, and keep only the changes without which the issue is not fixed. Test your changes thoroughly.
- Make sure you really understand what each change is doing. If you call a new method, read the documentation of that method to be sure it does what you want.
- Learn as you accept LLM suggested changes. This will help you write better prompts and solve bigger problems.
- LLMs are known to re-phrase even existing comments. Please avoid accepting such suggestions unless your change directly impacts those comments in the code.
- Ensure that you get your facts right. LLMs still hallucinate a lot and the official Android documentation should be referred to as the only source of truth during any discussions.
- In the PR's description, post two screencasts: one screencast showing the behavior before (demonstrating the bug), and one screencast showing the new behavior for the same operation (demonstrating the fix). If not easy to demonstrate in the UI, pastes of filtered logcat are OK.
- Avoid using a generic prompt to generate comments/KDoc for your code. LLMs will end up deriving context from the code that's self-explanatory already. Add meaningful comments that explain your thought-process, something that might not be evident from the code itself.
- Similarly, avoid passing the reviewer's suggestion directly to an LLM as a prompt. Those comments are intended for humans to understand but do not have enough context for an LLM. 
- We are a global, friendly community and do not judge anyone for their English grammar, as long as the message conveys what it intends to. We would prefer a concise, _not-so-perfect_ English sentence that explains your logic over a long, _perfect_ but generic LLM response. Please avoid using AI tools to do all the writing work for you during your day-to-day communications on PRs and issues; a slight polish should be fine.

