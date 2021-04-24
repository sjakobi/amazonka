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
-- Module      : Network.AWS.Pinpoint.CreateRecommenderConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Pinpoint configuration for a recommender model.
module Network.AWS.Pinpoint.CreateRecommenderConfiguration
  ( -- * Creating a Request
    createRecommenderConfiguration',
    CreateRecommenderConfiguration',

    -- * Request Lenses
    crcCreateRecommenderConfiguration,

    -- * Destructuring the Response
    createRecommenderConfigurationResponse,
    CreateRecommenderConfigurationResponse,

    -- * Response Lenses
    crcrrsResponseStatus,
    crcrrsRecommenderConfigurationResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRecommenderConfiguration'' smart constructor.
newtype CreateRecommenderConfiguration' = CreateRecommenderConfiguration''
  { _crcCreateRecommenderConfiguration ::
      CreateRecommenderConfiguration
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateRecommenderConfiguration'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcCreateRecommenderConfiguration' - Undocumented member.
createRecommenderConfiguration' ::
  -- | 'crcCreateRecommenderConfiguration'
  CreateRecommenderConfiguration ->
  CreateRecommenderConfiguration'
createRecommenderConfiguration'
  pCreateRecommenderConfiguration_ =
    CreateRecommenderConfiguration''
      { _crcCreateRecommenderConfiguration =
          pCreateRecommenderConfiguration_
      }

-- | Undocumented member.
crcCreateRecommenderConfiguration :: Lens' CreateRecommenderConfiguration' CreateRecommenderConfiguration
crcCreateRecommenderConfiguration = lens _crcCreateRecommenderConfiguration (\s a -> s {_crcCreateRecommenderConfiguration = a})

instance AWSRequest CreateRecommenderConfiguration' where
  type
    Rs CreateRecommenderConfiguration' =
      CreateRecommenderConfigurationResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          CreateRecommenderConfigurationResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable CreateRecommenderConfiguration'

instance NFData CreateRecommenderConfiguration'

instance ToHeaders CreateRecommenderConfiguration' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRecommenderConfiguration' where
  toJSON CreateRecommenderConfiguration'' {..} =
    object
      ( catMaybes
          [ Just
              ( "CreateRecommenderConfiguration"
                  .= _crcCreateRecommenderConfiguration
              )
          ]
      )

instance ToPath CreateRecommenderConfiguration' where
  toPath = const "/v1/recommenders"

instance ToQuery CreateRecommenderConfiguration' where
  toQuery = const mempty

-- | /See:/ 'createRecommenderConfigurationResponse' smart constructor.
data CreateRecommenderConfigurationResponse = CreateRecommenderConfigurationResponse'
  { _crcrrsResponseStatus ::
      !Int,
    _crcrrsRecommenderConfigurationResponse ::
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

-- | Creates a value of 'CreateRecommenderConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crcrrsResponseStatus' - -- | The response status code.
--
-- * 'crcrrsRecommenderConfigurationResponse' - Undocumented member.
createRecommenderConfigurationResponse ::
  -- | 'crcrrsResponseStatus'
  Int ->
  -- | 'crcrrsRecommenderConfigurationResponse'
  RecommenderConfigurationResponse ->
  CreateRecommenderConfigurationResponse
createRecommenderConfigurationResponse
  pResponseStatus_
  pRecommenderConfigurationResponse_ =
    CreateRecommenderConfigurationResponse'
      { _crcrrsResponseStatus =
          pResponseStatus_,
        _crcrrsRecommenderConfigurationResponse =
          pRecommenderConfigurationResponse_
      }

-- | -- | The response status code.
crcrrsResponseStatus :: Lens' CreateRecommenderConfigurationResponse Int
crcrrsResponseStatus = lens _crcrrsResponseStatus (\s a -> s {_crcrrsResponseStatus = a})

-- | Undocumented member.
crcrrsRecommenderConfigurationResponse :: Lens' CreateRecommenderConfigurationResponse RecommenderConfigurationResponse
crcrrsRecommenderConfigurationResponse = lens _crcrrsRecommenderConfigurationResponse (\s a -> s {_crcrrsRecommenderConfigurationResponse = a})

instance
  NFData
    CreateRecommenderConfigurationResponse
