Rails.application.routes.draw do
  post 'kinesis', to: 'kinesis#create'

  get 'workflows/:workflow_id/extractors/:extractor_id/extracts', to: 'extracts#index'
  put 'workflows/:workflow_id/extractors/:extractor_id/extracts', to: 'extracts#update'

  get 'workflows/:workflow_id/reducers/:reducer_id/reductions', to: 'reductions#index'
  put 'workflows/:workflow_id/reducers/:reducer_id/reductions', to: 'reductions#update'
end
