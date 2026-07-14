return {
  "yetone/avante.nvim",
  opts = {
    ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
    provider = "gemini",
    providers = {
      gemini = {
        model = "gemini-3.5-flash",
      },
    },
    system_prompt = "All non-code text responses must be written in Japanese.（コード箇所以外の解説やテキストはすべて日本語で回答してください。）",
  },
}
