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
-- Module      : Network.AWS.SSM.GetOpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- View operational metadata related to an application in Application Manager.
module Network.AWS.SSM.GetOpsMetadata
  ( -- * Creating a Request
    getOpsMetadata,
    GetOpsMetadata,

    -- * Request Lenses
    gomNextToken,
    gomMaxResults,
    gomOpsMetadataARN,

    -- * Destructuring the Response
    getOpsMetadataResponse,
    GetOpsMetadataResponse,

    -- * Response Lenses
    gomrrsResourceId,
    gomrrsNextToken,
    gomrrsMetadata,
    gomrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getOpsMetadata' smart constructor.
data GetOpsMetadata = GetOpsMetadata'
  { _gomNextToken ::
      !(Maybe Text),
    _gomMaxResults :: !(Maybe Nat),
    _gomOpsMetadataARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetOpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gomNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'gomMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'gomOpsMetadataARN' - The Amazon Resource Name (ARN) of an OpsMetadata Object to view.
getOpsMetadata ::
  -- | 'gomOpsMetadataARN'
  Text ->
  GetOpsMetadata
getOpsMetadata pOpsMetadataARN_ =
  GetOpsMetadata'
    { _gomNextToken = Nothing,
      _gomMaxResults = Nothing,
      _gomOpsMetadataARN = pOpsMetadataARN_
    }

-- | A token to start the list. Use this token to get the next set of results.
gomNextToken :: Lens' GetOpsMetadata (Maybe Text)
gomNextToken = lens _gomNextToken (\s a -> s {_gomNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
gomMaxResults :: Lens' GetOpsMetadata (Maybe Natural)
gomMaxResults = lens _gomMaxResults (\s a -> s {_gomMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of an OpsMetadata Object to view.
gomOpsMetadataARN :: Lens' GetOpsMetadata Text
gomOpsMetadataARN = lens _gomOpsMetadataARN (\s a -> s {_gomOpsMetadataARN = a})

instance AWSRequest GetOpsMetadata where
  type Rs GetOpsMetadata = GetOpsMetadataResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetOpsMetadataResponse'
            <$> (x .?> "ResourceId")
            <*> (x .?> "NextToken")
            <*> (x .?> "Metadata" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetOpsMetadata

instance NFData GetOpsMetadata

instance ToHeaders GetOpsMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetOpsMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetOpsMetadata where
  toJSON GetOpsMetadata' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gomNextToken,
            ("MaxResults" .=) <$> _gomMaxResults,
            Just ("OpsMetadataArn" .= _gomOpsMetadataARN)
          ]
      )

instance ToPath GetOpsMetadata where
  toPath = const "/"

instance ToQuery GetOpsMetadata where
  toQuery = const mempty

-- | /See:/ 'getOpsMetadataResponse' smart constructor.
data GetOpsMetadataResponse = GetOpsMetadataResponse'
  { _gomrrsResourceId ::
      !(Maybe Text),
    _gomrrsNextToken ::
      !(Maybe Text),
    _gomrrsMetadata ::
      !( Maybe
           ( Map
               Text
               MetadataValue
           )
       ),
    _gomrrsResponseStatus ::
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

-- | Creates a value of 'GetOpsMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gomrrsResourceId' - The resource ID of the Application Manager application.
--
-- * 'gomrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'gomrrsMetadata' - OpsMetadata for an Application Manager application.
--
-- * 'gomrrsResponseStatus' - -- | The response status code.
getOpsMetadataResponse ::
  -- | 'gomrrsResponseStatus'
  Int ->
  GetOpsMetadataResponse
getOpsMetadataResponse pResponseStatus_ =
  GetOpsMetadataResponse'
    { _gomrrsResourceId =
        Nothing,
      _gomrrsNextToken = Nothing,
      _gomrrsMetadata = Nothing,
      _gomrrsResponseStatus = pResponseStatus_
    }

-- | The resource ID of the Application Manager application.
gomrrsResourceId :: Lens' GetOpsMetadataResponse (Maybe Text)
gomrrsResourceId = lens _gomrrsResourceId (\s a -> s {_gomrrsResourceId = a})

-- | The token for the next set of items to return. Use this token to get the next set of results.
gomrrsNextToken :: Lens' GetOpsMetadataResponse (Maybe Text)
gomrrsNextToken = lens _gomrrsNextToken (\s a -> s {_gomrrsNextToken = a})

-- | OpsMetadata for an Application Manager application.
gomrrsMetadata :: Lens' GetOpsMetadataResponse (HashMap Text MetadataValue)
gomrrsMetadata = lens _gomrrsMetadata (\s a -> s {_gomrrsMetadata = a}) . _Default . _Map

-- | -- | The response status code.
gomrrsResponseStatus :: Lens' GetOpsMetadataResponse Int
gomrrsResponseStatus = lens _gomrrsResponseStatus (\s a -> s {_gomrrsResponseStatus = a})

instance NFData GetOpsMetadataResponse
