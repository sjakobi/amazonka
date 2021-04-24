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
-- Module      : Network.AWS.DeviceFarm.ListArtifacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about artifacts.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListArtifacts
  ( -- * Creating a Request
    listArtifacts,
    ListArtifacts,

    -- * Request Lenses
    laNextToken,
    laArn,
    laType,

    -- * Destructuring the Response
    listArtifactsResponse,
    ListArtifactsResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsArtifacts,
    larrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the list artifacts operation.
--
--
--
-- /See:/ 'listArtifacts' smart constructor.
data ListArtifacts = ListArtifacts'
  { _laNextToken ::
      !(Maybe Text),
    _laArn :: !Text,
    _laType :: !ArtifactCategory
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListArtifacts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'laArn' - The run, job, suite, or test ARN.
--
-- * 'laType' - The artifacts' type. Allowed values include:     * FILE     * LOG     * SCREENSHOT
listArtifacts ::
  -- | 'laArn'
  Text ->
  -- | 'laType'
  ArtifactCategory ->
  ListArtifacts
listArtifacts pArn_ pType_ =
  ListArtifacts'
    { _laNextToken = Nothing,
      _laArn = pArn_,
      _laType = pType_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
laNextToken :: Lens' ListArtifacts (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The run, job, suite, or test ARN.
laArn :: Lens' ListArtifacts Text
laArn = lens _laArn (\s a -> s {_laArn = a})

-- | The artifacts' type. Allowed values include:     * FILE     * LOG     * SCREENSHOT
laType :: Lens' ListArtifacts ArtifactCategory
laType = lens _laType (\s a -> s {_laType = a})

instance AWSPager ListArtifacts where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsArtifacts) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListArtifacts where
  type Rs ListArtifacts = ListArtifactsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListArtifactsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "artifacts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListArtifacts

instance NFData ListArtifacts

instance ToHeaders ListArtifacts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListArtifacts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListArtifacts where
  toJSON ListArtifacts' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _laNextToken,
            Just ("arn" .= _laArn),
            Just ("type" .= _laType)
          ]
      )

instance ToPath ListArtifacts where
  toPath = const "/"

instance ToQuery ListArtifacts where
  toQuery = const mempty

-- | Represents the result of a list artifacts operation.
--
--
--
-- /See:/ 'listArtifactsResponse' smart constructor.
data ListArtifactsResponse = ListArtifactsResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsArtifacts ::
      !(Maybe [Artifact]),
    _larrsResponseStatus ::
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

-- | Creates a value of 'ListArtifactsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- * 'larrsArtifacts' - Information about the artifacts.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listArtifactsResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListArtifactsResponse
listArtifactsResponse pResponseStatus_ =
  ListArtifactsResponse'
    { _larrsNextToken = Nothing,
      _larrsArtifacts = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
larrsNextToken :: Lens' ListArtifactsResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | Information about the artifacts.
larrsArtifacts :: Lens' ListArtifactsResponse [Artifact]
larrsArtifacts = lens _larrsArtifacts (\s a -> s {_larrsArtifacts = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListArtifactsResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListArtifactsResponse
