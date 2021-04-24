{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetDataflowGraph
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transforms a Python script into a directed acyclic graph (DAG).
module Network.AWS.Glue.GetDataflowGraph
  ( -- * Creating a Request
    getDataflowGraph,
    GetDataflowGraph,

    -- * Request Lenses
    gdgPythonScript,

    -- * Destructuring the Response
    getDataflowGraphResponse,
    GetDataflowGraphResponse,

    -- * Response Lenses
    gdgrrsDagNodes,
    gdgrrsDagEdges,
    gdgrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDataflowGraph' smart constructor.
newtype GetDataflowGraph = GetDataflowGraph'
  { _gdgPythonScript ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDataflowGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgPythonScript' - The Python script to transform.
getDataflowGraph ::
  GetDataflowGraph
getDataflowGraph =
  GetDataflowGraph' {_gdgPythonScript = Nothing}

-- | The Python script to transform.
gdgPythonScript :: Lens' GetDataflowGraph (Maybe Text)
gdgPythonScript = lens _gdgPythonScript (\s a -> s {_gdgPythonScript = a})

instance AWSRequest GetDataflowGraph where
  type Rs GetDataflowGraph = GetDataflowGraphResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetDataflowGraphResponse'
            <$> (x .?> "DagNodes" .!@ mempty)
            <*> (x .?> "DagEdges" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDataflowGraph

instance NFData GetDataflowGraph

instance ToHeaders GetDataflowGraph where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetDataflowGraph" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDataflowGraph where
  toJSON GetDataflowGraph' {..} =
    object
      ( catMaybes
          [("PythonScript" .=) <$> _gdgPythonScript]
      )

instance ToPath GetDataflowGraph where
  toPath = const "/"

instance ToQuery GetDataflowGraph where
  toQuery = const mempty

-- | /See:/ 'getDataflowGraphResponse' smart constructor.
data GetDataflowGraphResponse = GetDataflowGraphResponse'
  { _gdgrrsDagNodes ::
      !( Maybe
           [CodeGenNode]
       ),
    _gdgrrsDagEdges ::
      !( Maybe
           [CodeGenEdge]
       ),
    _gdgrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDataflowGraphResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdgrrsDagNodes' - A list of the nodes in the resulting DAG.
--
-- * 'gdgrrsDagEdges' - A list of the edges in the resulting DAG.
--
-- * 'gdgrrsResponseStatus' - -- | The response status code.
getDataflowGraphResponse ::
  -- | 'gdgrrsResponseStatus'
  Int ->
  GetDataflowGraphResponse
getDataflowGraphResponse pResponseStatus_ =
  GetDataflowGraphResponse'
    { _gdgrrsDagNodes =
        Nothing,
      _gdgrrsDagEdges = Nothing,
      _gdgrrsResponseStatus = pResponseStatus_
    }

-- | A list of the nodes in the resulting DAG.
gdgrrsDagNodes :: Lens' GetDataflowGraphResponse [CodeGenNode]
gdgrrsDagNodes = lens _gdgrrsDagNodes (\s a -> s {_gdgrrsDagNodes = a}) . _Default . _Coerce

-- | A list of the edges in the resulting DAG.
gdgrrsDagEdges :: Lens' GetDataflowGraphResponse [CodeGenEdge]
gdgrrsDagEdges = lens _gdgrrsDagEdges (\s a -> s {_gdgrrsDagEdges = a}) . _Default . _Coerce

-- | -- | The response status code.
gdgrrsResponseStatus :: Lens' GetDataflowGraphResponse Int
gdgrrsResponseStatus = lens _gdgrrsResponseStatus (\s a -> s {_gdgrrsResponseStatus = a})

instance NFData GetDataflowGraphResponse
