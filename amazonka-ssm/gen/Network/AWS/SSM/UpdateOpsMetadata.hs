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
-- Module      : Network.AWS.SSM.UpdateOpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Systems Manager calls this API action when you edit OpsMetadata in Application Manager.
module Network.AWS.SSM.UpdateOpsMetadata
  ( -- * Creating a Request
    updateOpsMetadata,
    UpdateOpsMetadata,

    -- * Request Lenses
    uomMetadataToUpdate,
    uomKeysToDelete,
    uomOpsMetadataARN,

    -- * Destructuring the Response
    updateOpsMetadataResponse,
    UpdateOpsMetadataResponse,

    -- * Response Lenses
    uomrrsOpsMetadataARN,
    uomrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateOpsMetadata' smart constructor.
data UpdateOpsMetadata = UpdateOpsMetadata'
  { _uomMetadataToUpdate ::
      !(Maybe (Map Text MetadataValue)),
    _uomKeysToDelete ::
      !(Maybe (List1 Text)),
    _uomOpsMetadataARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateOpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uomMetadataToUpdate' - Metadata to add to an OpsMetadata object.
--
-- * 'uomKeysToDelete' - The metadata keys to delete from the OpsMetadata object.
--
-- * 'uomOpsMetadataARN' - The Amazon Resoure Name (ARN) of the OpsMetadata Object to update.
updateOpsMetadata ::
  -- | 'uomOpsMetadataARN'
  Text ->
  UpdateOpsMetadata
updateOpsMetadata pOpsMetadataARN_ =
  UpdateOpsMetadata'
    { _uomMetadataToUpdate = Nothing,
      _uomKeysToDelete = Nothing,
      _uomOpsMetadataARN = pOpsMetadataARN_
    }

-- | Metadata to add to an OpsMetadata object.
uomMetadataToUpdate :: Lens' UpdateOpsMetadata (HashMap Text MetadataValue)
uomMetadataToUpdate = lens _uomMetadataToUpdate (\s a -> s {_uomMetadataToUpdate = a}) . _Default . _Map

-- | The metadata keys to delete from the OpsMetadata object.
uomKeysToDelete :: Lens' UpdateOpsMetadata (Maybe (NonEmpty Text))
uomKeysToDelete = lens _uomKeysToDelete (\s a -> s {_uomKeysToDelete = a}) . mapping _List1

-- | The Amazon Resoure Name (ARN) of the OpsMetadata Object to update.
uomOpsMetadataARN :: Lens' UpdateOpsMetadata Text
uomOpsMetadataARN = lens _uomOpsMetadataARN (\s a -> s {_uomOpsMetadataARN = a})

instance AWSRequest UpdateOpsMetadata where
  type Rs UpdateOpsMetadata = UpdateOpsMetadataResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateOpsMetadataResponse'
            <$> (x .?> "OpsMetadataArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateOpsMetadata

instance NFData UpdateOpsMetadata

instance ToHeaders UpdateOpsMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateOpsMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateOpsMetadata where
  toJSON UpdateOpsMetadata' {..} =
    object
      ( catMaybes
          [ ("MetadataToUpdate" .=) <$> _uomMetadataToUpdate,
            ("KeysToDelete" .=) <$> _uomKeysToDelete,
            Just ("OpsMetadataArn" .= _uomOpsMetadataARN)
          ]
      )

instance ToPath UpdateOpsMetadata where
  toPath = const "/"

instance ToQuery UpdateOpsMetadata where
  toQuery = const mempty

-- | /See:/ 'updateOpsMetadataResponse' smart constructor.
data UpdateOpsMetadataResponse = UpdateOpsMetadataResponse'
  { _uomrrsOpsMetadataARN ::
      !(Maybe Text),
    _uomrrsResponseStatus ::
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

-- | Creates a value of 'UpdateOpsMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uomrrsOpsMetadataARN' - The Amazon Resource Name (ARN) of the OpsMetadata Object that was updated.
--
-- * 'uomrrsResponseStatus' - -- | The response status code.
updateOpsMetadataResponse ::
  -- | 'uomrrsResponseStatus'
  Int ->
  UpdateOpsMetadataResponse
updateOpsMetadataResponse pResponseStatus_ =
  UpdateOpsMetadataResponse'
    { _uomrrsOpsMetadataARN =
        Nothing,
      _uomrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the OpsMetadata Object that was updated.
uomrrsOpsMetadataARN :: Lens' UpdateOpsMetadataResponse (Maybe Text)
uomrrsOpsMetadataARN = lens _uomrrsOpsMetadataARN (\s a -> s {_uomrrsOpsMetadataARN = a})

-- | -- | The response status code.
uomrrsResponseStatus :: Lens' UpdateOpsMetadataResponse Int
uomrrsResponseStatus = lens _uomrrsResponseStatus (\s a -> s {_uomrrsResponseStatus = a})

instance NFData UpdateOpsMetadataResponse
