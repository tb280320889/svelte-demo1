import { error } from "@sveltejs/kit"
import type { PageServerLoad } from "./$types"

export const load: PageServerLoad = async ({ params }) => {
	const blogArticles = [
		{
			id: 0,
			text: "text1"
		},
		{
			id: 1,
			text: "text2"
		}
	]

	const articleId = params.articleId

	const foundArticle = blogArticles.find((article) => article.id.toString() === articleId)
	if (foundArticle) {
		return {
			blogPost: foundArticle.text,
			articleId: articleId
		}
	}

	throw error(404, "Not found")
}
