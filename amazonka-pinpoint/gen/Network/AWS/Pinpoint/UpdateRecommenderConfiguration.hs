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
-- Module      : Network.AWS.Pinpoint.UpdateRecommenderConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an Amazon Pinpoint configuration for a recommender model.
module Network.AWS.Pinpoint.UpdateRecommenderConfiguration
  ( -- * Creating a Request
    updateRecommenderConfiguration',
    UpdateRecommenderConfiguration',

    -- * Request Lenses
    urcRecommenderId,
    urcUpdateRecommenderConfiguration,

    -- * Destructuring the Response
    updateRecommenderConfigurationResponse,
    UpdateRecommenderConfigurationResponse,

    -- * Response Lenses
    urcrrsResponseStatus,
    urcrrsRecommenderConfigurationResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRecommenderConfiguration'' smart constructor.
data UpdateRecommenderConfiguration' = UpdateRecommenderConfiguration''
  { _urcRecommenderId ::
      !Text,
    _urcUpdateRecommenderConfiguration ::
      !UpdateRecommenderConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRecommenderConfiguration'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcRecommenderId' - The unique identifier for the recommender model configuration. This identifier is displayed as the __Recommender ID__ on the Amazon Pinpoint console.
--
-- * 'urcUpdateRecommenderConfiguration' - Undocumented member.
updateRecommenderConfiguration' ::
  -- | 'urcRecommenderId'
  Text ->
  -- | 'urcUpdateRecommenderConfiguration'
  UpdateRecommenderConfiguration ->
  UpdateRecommenderConfiguration'
updateRecommenderConfiguration'
  pRecommenderId_
  pUpdateRecommenderConfiguration_ =
    UpdateRecommenderConfiguration''
      { _urcRecommenderId =
          pRecommenderId_,
        _urcUpdateRecommenderConfiguration =
          pUpdateRecommenderConfiguration_
      }

-- | The unique identifier for the recommender model configuration. This identifier is displayed as the __Recommender ID__ on the Amazon Pinpoint console.
urcRecommenderId :: Lens' UpdateRecommenderConfiguration' Text
urcRecommenderId = lens _urcRecommenderId (\s a -> s {_urcRecommenderId = a})

-- | Undocumented member.
urcUpdateRecommenderConfiguration :: Lens' UpdateRecommenderConfiguration' UpdateRecommenderConfiguration
urcUpdateRecommenderConfiguration = lens _urcUpdateRecommenderConfiguration (\s a -> s {_urcUpdateRecommenderConfiguration = a})

instance AWSRequest UpdateRecommenderConfiguration' where
  type
    Rs UpdateRecommenderConfiguration' =
      UpdateRecommenderConfigurationResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateRecommenderConfigurationResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateRecommenderConfiguration'

instance NFData UpdateRecommenderConfiguration'

instance ToHeaders UpdateRecommenderConfiguration' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateRecommenderConfiguration' where
  toJSON UpdateRecommenderConfiguration'' {..} =
    object
      ( catMaybes
          [ Just
              ( "UpdateRecommenderConfiguration"
                  .= _urcUpdateRecommenderConfiguration
              )
          ]
      )

instance ToPath UpdateRecommenderConfiguration' where
  toPath UpdateRecommenderConfiguration'' {..} =
    mconcat
      ["/v1/recommenders/", toBS _urcRecommenderId]

instance ToQuery UpdateRecommenderConfiguration' where
  toQuery = const mempty

-- | /See:/ 'updateRecommenderConfigurationResponse' smart constructor.
data UpdateRecommenderConfigurationResponse = UpdateRecommenderConfigurationResponse'
  { _urcrrsResponseStatus ::
      !Int,
    _urcrrsRecommenderConfigurationResponse ::
      !RecommenderConfigurationResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateRecommenderConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urcrrsResponseStatus' - -- | The response status code.
--
-- * 'urcrrsRecommenderConfigurationResponse' - Undocumented member.
updateRecommenderConfigurationResponse ::
  -- | 'urcrrsResponseStatus'
  Int ->
  -- | 'urcrrsRecommenderConfigurationResponse'
  RecommenderConfigurationResponse ->
  UpdateRecommenderConfigurationResponse
updateRecommenderConfigurationResponse
  pResponseStatus_
  pRecommenderConfigurationResponse_ =
    UpdateRecommenderConfigurationResponse'
      { _urcrrsResponseStatus =
          pResponseStatus_,
        _urcrrsRecommenderConfigurationResponse =
          pRecommenderConfigurationResponse_
      }

-- | -- | The response status code.
urcrrsResponseStatus :: Lens' UpdateRecommenderConfigurationResponse Int
urcrrsResponseStatus = lens _urcrrsResponseStatus (\s a -> s {_urcrrsResponseStatus = a})

-- | Undocumented member.
urcrrsRecommenderConfigurationResponse :: Lens' UpdateRecommenderConfigurationResponse RecommenderConfigurationResponse
urcrrsRecommenderConfigurationResponse = lens _urcrrsRecommenderConfigurationResponse (\s a -> s {_urcrrsRecommenderConfigurationResponse = a})

instance
  NFData
    UpdateRecommenderConfigurationResponse
