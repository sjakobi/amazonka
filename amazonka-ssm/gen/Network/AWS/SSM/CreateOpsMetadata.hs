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
-- Module      : Network.AWS.SSM.CreateOpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- If you create a new application in Application Manager, Systems Manager calls this API action to specify information about the new application, including the application type.
module Network.AWS.SSM.CreateOpsMetadata
  ( -- * Creating a Request
    createOpsMetadata,
    CreateOpsMetadata,

    -- * Request Lenses
    comMetadata,
    comResourceId,

    -- * Destructuring the Response
    createOpsMetadataResponse,
    CreateOpsMetadataResponse,

    -- * Response Lenses
    comrrsOpsMetadataARN,
    comrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'createOpsMetadata' smart constructor.
data CreateOpsMetadata = CreateOpsMetadata'
  { _comMetadata ::
      !(Maybe (Map Text MetadataValue)),
    _comResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateOpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comMetadata' - Metadata for a new Application Manager application.
--
-- * 'comResourceId' - A resource ID for a new Application Manager application.
createOpsMetadata ::
  -- | 'comResourceId'
  Text ->
  CreateOpsMetadata
createOpsMetadata pResourceId_ =
  CreateOpsMetadata'
    { _comMetadata = Nothing,
      _comResourceId = pResourceId_
    }

-- | Metadata for a new Application Manager application.
comMetadata :: Lens' CreateOpsMetadata (HashMap Text MetadataValue)
comMetadata = lens _comMetadata (\s a -> s {_comMetadata = a}) . _Default . _Map

-- | A resource ID for a new Application Manager application.
comResourceId :: Lens' CreateOpsMetadata Text
comResourceId = lens _comResourceId (\s a -> s {_comResourceId = a})

instance AWSRequest CreateOpsMetadata where
  type Rs CreateOpsMetadata = CreateOpsMetadataResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          CreateOpsMetadataResponse'
            <$> (x .?> "OpsMetadataArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateOpsMetadata

instance NFData CreateOpsMetadata

instance ToHeaders CreateOpsMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.CreateOpsMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateOpsMetadata where
  toJSON CreateOpsMetadata' {..} =
    object
      ( catMaybes
          [ ("Metadata" .=) <$> _comMetadata,
            Just ("ResourceId" .= _comResourceId)
          ]
      )

instance ToPath CreateOpsMetadata where
  toPath = const "/"

instance ToQuery CreateOpsMetadata where
  toQuery = const mempty

-- | /See:/ 'createOpsMetadataResponse' smart constructor.
data CreateOpsMetadataResponse = CreateOpsMetadataResponse'
  { _comrrsOpsMetadataARN ::
      !(Maybe Text),
    _comrrsResponseStatus ::
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

-- | Creates a value of 'CreateOpsMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'comrrsOpsMetadataARN' - The Amazon Resource Name (ARN) of the OpsMetadata Object or blob created by the call.
--
-- * 'comrrsResponseStatus' - -- | The response status code.
createOpsMetadataResponse ::
  -- | 'comrrsResponseStatus'
  Int ->
  CreateOpsMetadataResponse
createOpsMetadataResponse pResponseStatus_ =
  CreateOpsMetadataResponse'
    { _comrrsOpsMetadataARN =
        Nothing,
      _comrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the OpsMetadata Object or blob created by the call.
comrrsOpsMetadataARN :: Lens' CreateOpsMetadataResponse (Maybe Text)
comrrsOpsMetadataARN = lens _comrrsOpsMetadataARN (\s a -> s {_comrrsOpsMetadataARN = a})

-- | -- | The response status code.
comrrsResponseStatus :: Lens' CreateOpsMetadataResponse Int
comrrsResponseStatus = lens _comrrsResponseStatus (\s a -> s {_comrrsResponseStatus = a})

instance NFData CreateOpsMetadataResponse
