defmodule SamtWeb.Blog.PostSummary do
  use Phoenix.Component
  use SamtWeb, :html
  require Logger

  def render(assigns) do
    ~H"""
    <article class="mb-4">
      <h2 class="text-md text-zinc-500 font-bold">
        <.link class="hover:text-zinc-600" href={~p"/blog/#{@post.slug}"}>
          <%= @post.title %><.icon name="hero-arrow-long-right-mini" class="w-4 h-4" />
        </.link>
      </h2>
      <time class="text-sm text-gray-400">
        <%= Calendar.strftime(@post.published_at, "%B %d, %Y") %>
      </time>
      <p class="text-sm mt-0.5">
        <%= String.slice(@post.content, 0, 125) <> "..." %>
      </p>
    </article>
    """
  end
end
