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
-- Module      : Network.AWS.DeviceFarm.ListTestGridSessionArtifacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of artifacts created during the session.
module Network.AWS.DeviceFarm.ListTestGridSessionArtifacts
  ( -- * Creating a Request
    listTestGridSessionArtifacts,
    ListTestGridSessionArtifacts,

    -- * Request Lenses
    lNextToken,
    lMaxResult,
    lType,
    lSessionARN,

    -- * Destructuring the Response
    listTestGridSessionArtifactsResponse,
    ListTestGridSessionArtifactsResponse,

    -- * Response Lenses
    lrsNextToken,
    lrsArtifacts,
    lrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTestGridSessionArtifacts' smart constructor.
data ListTestGridSessionArtifacts = ListTestGridSessionArtifacts'
  { _lNextToken ::
      !(Maybe Text),
    _lMaxResult ::
      !(Maybe Nat),
    _lType ::
      !( Maybe
           TestGridSessionArtifactCategory
       ),
    _lSessionARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTestGridSessionArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextToken' - Pagination token.
--
-- * 'lMaxResult' - The maximum number of results to be returned by a request.
--
-- * 'lType' - Limit results to a specified type of artifact.
--
-- * 'lSessionARN' - The ARN of a 'TestGridSession' .
listTestGridSessionArtifacts ::
  -- | 'lSessionARN'
  Text ->
  ListTestGridSessionArtifacts
listTestGridSessionArtifacts pSessionARN_ =
  ListTestGridSessionArtifacts'
    { _lNextToken =
        Nothing,
      _lMaxResult = Nothing,
      _lType = Nothing,
      _lSessionARN = pSessionARN_
    }

-- | Pagination token.
lNextToken :: Lens' ListTestGridSessionArtifacts (Maybe Text)
lNextToken = lens _lNextToken (\s a -> s {_lNextToken = a})

-- | The maximum number of results to be returned by a request.
lMaxResult :: Lens' ListTestGridSessionArtifacts (Maybe Natural)
lMaxResult = lens _lMaxResult (\s a -> s {_lMaxResult = a}) . mapping _Nat

-- | Limit results to a specified type of artifact.
lType :: Lens' ListTestGridSessionArtifacts (Maybe TestGridSessionArtifactCategory)
lType = lens _lType (\s a -> s {_lType = a})

-- | The ARN of a 'TestGridSession' .
lSessionARN :: Lens' ListTestGridSessionArtifacts Text
lSessionARN = lens _lSessionARN (\s a -> s {_lSessionARN = a})

instance AWSRequest ListTestGridSessionArtifacts where
  type
    Rs ListTestGridSessionArtifacts =
      ListTestGridSessionArtifactsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListTestGridSessionArtifactsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "artifacts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTestGridSessionArtifacts

instance NFData ListTestGridSessionArtifacts

instance ToHeaders ListTestGridSessionArtifacts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListTestGridSessionArtifacts" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTestGridSessionArtifacts where
  toJSON ListTestGridSessionArtifacts' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lNextToken,
            ("maxResult" .=) <$> _lMaxResult,
            ("type" .=) <$> _lType,
            Just ("sessionArn" .= _lSessionARN)
          ]
      )

instance ToPath ListTestGridSessionArtifacts where
  toPath = const "/"

instance ToQuery ListTestGridSessionArtifacts where
  toQuery = const mempty

-- | /See:/ 'listTestGridSessionArtifactsResponse' smart constructor.
data ListTestGridSessionArtifactsResponse = ListTestGridSessionArtifactsResponse'
  { _lrsNextToken ::
      !( Maybe
           Text
       ),
    _lrsArtifacts ::
      !( Maybe
           [TestGridSessionArtifact]
       ),
    _lrsResponseStatus ::
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

-- | Creates a value of 'ListTestGridSessionArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrsNextToken' - Pagination token.
--
-- * 'lrsArtifacts' - A list of test grid session artifacts for a 'TestGridSession' .
--
-- * 'lrsResponseStatus' - -- | The response status code.
listTestGridSessionArtifactsResponse ::
  -- | 'lrsResponseStatus'
  Int ->
  ListTestGridSessionArtifactsResponse
listTestGridSessionArtifactsResponse pResponseStatus_ =
  ListTestGridSessionArtifactsResponse'
    { _lrsNextToken =
        Nothing,
      _lrsArtifacts = Nothing,
      _lrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
lrsNextToken :: Lens' ListTestGridSessionArtifactsResponse (Maybe Text)
lrsNextToken = lens _lrsNextToken (\s a -> s {_lrsNextToken = a})

-- | A list of test grid session artifacts for a 'TestGridSession' .
lrsArtifacts :: Lens' ListTestGridSessionArtifactsResponse [TestGridSessionArtifact]
lrsArtifacts = lens _lrsArtifacts (\s a -> s {_lrsArtifacts = a}) . _Default . _Coerce

-- | -- | The response status code.
lrsResponseStatus :: Lens' ListTestGridSessionArtifactsResponse Int
lrsResponseStatus = lens _lrsResponseStatus (\s a -> s {_lrsResponseStatus = a})

instance NFData ListTestGridSessionArtifactsResponse
