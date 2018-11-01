json.extract! board, :id, :title, :content, :boardimage, :created_at, :updated_at
json.url board_url(board, format: :json)
