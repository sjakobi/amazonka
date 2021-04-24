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
-- Module      : Network.AWS.SSM.UpdateAssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the status of the Systems Manager document associated with the specified instance.
module Network.AWS.SSM.UpdateAssociationStatus
  ( -- * Creating a Request
    updateAssociationStatus,
    UpdateAssociationStatus,

    -- * Request Lenses
    uasName,
    uasInstanceId,
    uasAssociationStatus,

    -- * Destructuring the Response
    updateAssociationStatusResponse,
    UpdateAssociationStatusResponse,

    -- * Response Lenses
    uasrrsAssociationDescription,
    uasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateAssociationStatus' smart constructor.
data UpdateAssociationStatus = UpdateAssociationStatus'
  { _uasName ::
      !Text,
    _uasInstanceId :: !Text,
    _uasAssociationStatus ::
      !AssociationStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateAssociationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasName' - The name of the Systems Manager document.
--
-- * 'uasInstanceId' - The ID of the instance.
--
-- * 'uasAssociationStatus' - The association status.
updateAssociationStatus ::
  -- | 'uasName'
  Text ->
  -- | 'uasInstanceId'
  Text ->
  -- | 'uasAssociationStatus'
  AssociationStatus ->
  UpdateAssociationStatus
updateAssociationStatus
  pName_
  pInstanceId_
  pAssociationStatus_ =
    UpdateAssociationStatus'
      { _uasName = pName_,
        _uasInstanceId = pInstanceId_,
        _uasAssociationStatus = pAssociationStatus_
      }

-- | The name of the Systems Manager document.
uasName :: Lens' UpdateAssociationStatus Text
uasName = lens _uasName (\s a -> s {_uasName = a})

-- | The ID of the instance.
uasInstanceId :: Lens' UpdateAssociationStatus Text
uasInstanceId = lens _uasInstanceId (\s a -> s {_uasInstanceId = a})

-- | The association status.
uasAssociationStatus :: Lens' UpdateAssociationStatus AssociationStatus
uasAssociationStatus = lens _uasAssociationStatus (\s a -> s {_uasAssociationStatus = a})

instance AWSRequest UpdateAssociationStatus where
  type
    Rs UpdateAssociationStatus =
      UpdateAssociationStatusResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateAssociationStatusResponse'
            <$> (x .?> "AssociationDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateAssociationStatus

instance NFData UpdateAssociationStatus

instance ToHeaders UpdateAssociationStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateAssociationStatus" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAssociationStatus where
  toJSON UpdateAssociationStatus' {..} =
    object
      ( catMaybes
          [ Just ("Name" .= _uasName),
            Just ("InstanceId" .= _uasInstanceId),
            Just ("AssociationStatus" .= _uasAssociationStatus)
          ]
      )

instance ToPath UpdateAssociationStatus where
  toPath = const "/"

instance ToQuery UpdateAssociationStatus where
  toQuery = const mempty

-- | /See:/ 'updateAssociationStatusResponse' smart constructor.
data UpdateAssociationStatusResponse = UpdateAssociationStatusResponse'
  { _uasrrsAssociationDescription ::
      !( Maybe
           AssociationDescription
       ),
    _uasrrsResponseStatus ::
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

-- | Creates a value of 'UpdateAssociationStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uasrrsAssociationDescription' - Information about the association.
--
-- * 'uasrrsResponseStatus' - -- | The response status code.
updateAssociationStatusResponse ::
  -- | 'uasrrsResponseStatus'
  Int ->
  UpdateAssociationStatusResponse
updateAssociationStatusResponse pResponseStatus_ =
  UpdateAssociationStatusResponse'
    { _uasrrsAssociationDescription =
        Nothing,
      _uasrrsResponseStatus = pResponseStatus_
    }

-- | Information about the association.
uasrrsAssociationDescription :: Lens' UpdateAssociationStatusResponse (Maybe AssociationDescription)
uasrrsAssociationDescription = lens _uasrrsAssociationDescription (\s a -> s {_uasrrsAssociationDescription = a})

-- | -- | The response status code.
uasrrsResponseStatus :: Lens' UpdateAssociationStatusResponse Int
uasrrsResponseStatus = lens _uasrrsResponseStatus (\s a -> s {_uasrrsResponseStatus = a})

instance NFData UpdateAssociationStatusResponse
