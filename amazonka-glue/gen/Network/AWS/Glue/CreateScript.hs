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
-- Module      : Network.AWS.Glue.CreateScript
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transforms a directed acyclic graph (DAG) into code.
module Network.AWS.Glue.CreateScript
  ( -- * Creating a Request
    createScript,
    CreateScript,

    -- * Request Lenses
    csDagNodes,
    csLanguage,
    csDagEdges,

    -- * Destructuring the Response
    createScriptResponse,
    CreateScriptResponse,

    -- * Response Lenses
    csrsrsPythonScript,
    csrsrsScalaCode,
    csrsrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createScript' smart constructor.
data CreateScript = CreateScript'
  { _csDagNodes ::
      !(Maybe [CodeGenNode]),
    _csLanguage :: !(Maybe Language),
    _csDagEdges :: !(Maybe [CodeGenEdge])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateScript' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDagNodes' - A list of the nodes in the DAG.
--
-- * 'csLanguage' - The programming language of the resulting code from the DAG.
--
-- * 'csDagEdges' - A list of the edges in the DAG.
createScript ::
  CreateScript
createScript =
  CreateScript'
    { _csDagNodes = Nothing,
      _csLanguage = Nothing,
      _csDagEdges = Nothing
    }

-- | A list of the nodes in the DAG.
csDagNodes :: Lens' CreateScript [CodeGenNode]
csDagNodes = lens _csDagNodes (\s a -> s {_csDagNodes = a}) . _Default . _Coerce

-- | The programming language of the resulting code from the DAG.
csLanguage :: Lens' CreateScript (Maybe Language)
csLanguage = lens _csLanguage (\s a -> s {_csLanguage = a})

-- | A list of the edges in the DAG.
csDagEdges :: Lens' CreateScript [CodeGenEdge]
csDagEdges = lens _csDagEdges (\s a -> s {_csDagEdges = a}) . _Default . _Coerce

instance AWSRequest CreateScript where
  type Rs CreateScript = CreateScriptResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateScriptResponse'
            <$> (x .?> "PythonScript")
            <*> (x .?> "ScalaCode")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateScript

instance NFData CreateScript

instance ToHeaders CreateScript where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateScript" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateScript where
  toJSON CreateScript' {..} =
    object
      ( catMaybes
          [ ("DagNodes" .=) <$> _csDagNodes,
            ("Language" .=) <$> _csLanguage,
            ("DagEdges" .=) <$> _csDagEdges
          ]
      )

instance ToPath CreateScript where
  toPath = const "/"

instance ToQuery CreateScript where
  toQuery = const mempty

-- | /See:/ 'createScriptResponse' smart constructor.
data CreateScriptResponse = CreateScriptResponse'
  { _csrsrsPythonScript ::
      !(Maybe Text),
    _csrsrsScalaCode ::
      !(Maybe Text),
    _csrsrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateScriptResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrsrsPythonScript' - The Python script generated from the DAG.
--
-- * 'csrsrsScalaCode' - The Scala code generated from the DAG.
--
-- * 'csrsrsResponseStatus' - -- | The response status code.
createScriptResponse ::
  -- | 'csrsrsResponseStatus'
  Int ->
  CreateScriptResponse
createScriptResponse pResponseStatus_ =
  CreateScriptResponse'
    { _csrsrsPythonScript =
        Nothing,
      _csrsrsScalaCode = Nothing,
      _csrsrsResponseStatus = pResponseStatus_
    }

-- | The Python script generated from the DAG.
csrsrsPythonScript :: Lens' CreateScriptResponse (Maybe Text)
csrsrsPythonScript = lens _csrsrsPythonScript (\s a -> s {_csrsrsPythonScript = a})

-- | The Scala code generated from the DAG.
csrsrsScalaCode :: Lens' CreateScriptResponse (Maybe Text)
csrsrsScalaCode = lens _csrsrsScalaCode (\s a -> s {_csrsrsScalaCode = a})

-- | -- | The response status code.
csrsrsResponseStatus :: Lens' CreateScriptResponse Int
csrsrsResponseStatus = lens _csrsrsResponseStatus (\s a -> s {_csrsrsResponseStatus = a})

instance NFData CreateScriptResponse
