class State < ActiveHash::Base
  self.data =[
    {id: 201, states: '新品、未使用'},
    {id: 202, states: '未使用に近い'},
    {id: 203, states: '目立った傷や汚れなし'},
    {id: 204, states: 'やや傷や汚れあり'},
    {id: 205, states: '傷や汚れあり'},
    {id: 206, states: '全体的に状態が悪い'}
  ]
end
