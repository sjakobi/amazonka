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
-- Module      : Network.AWS.SSM.UpdateMaintenanceWindowTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the target of an existing maintenance window. You can change the following:
--
--
--     * Name
--
--     * Description
--
--     * Owner
--
--     * IDs for an ID target
--
--     * Tags for a Tag target
--
--     * From any supported tag type to another. The three supported tag types are ID target, Tag target, and resource group. For more information, see 'Target' .
module Network.AWS.SSM.UpdateMaintenanceWindowTarget
  ( -- * Creating a Request
    updateMaintenanceWindowTarget,
    UpdateMaintenanceWindowTarget,

    -- * Request Lenses
    umwtTargets,
    umwtName,
    umwtReplace,
    umwtDescription,
    umwtOwnerInformation,
    umwtWindowId,
    umwtWindowTargetId,

    -- * Destructuring the Response
    updateMaintenanceWindowTargetResponse,
    UpdateMaintenanceWindowTargetResponse,

    -- * Response Lenses
    ursWindowTargetId,
    ursTargets,
    ursName,
    ursWindowId,
    ursDescription,
    ursOwnerInformation,
    ursResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateMaintenanceWindowTarget' smart constructor.
data UpdateMaintenanceWindowTarget = UpdateMaintenanceWindowTarget'
  { _umwtTargets ::
      !( Maybe
           [Target]
       ),
    _umwtName ::
      !( Maybe
           Text
       ),
    _umwtReplace ::
      !( Maybe
           Bool
       ),
    _umwtDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _umwtOwnerInformation ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _umwtWindowId ::
      !Text,
    _umwtWindowTargetId ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMaintenanceWindowTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umwtTargets' - The targets to add or replace.
--
-- * 'umwtName' - A name for the update.
--
-- * 'umwtReplace' - If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
--
-- * 'umwtDescription' - An optional description for the update.
--
-- * 'umwtOwnerInformation' - User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
--
-- * 'umwtWindowId' - The maintenance window ID with which to modify the target.
--
-- * 'umwtWindowTargetId' - The target ID to modify.
updateMaintenanceWindowTarget ::
  -- | 'umwtWindowId'
  Text ->
  -- | 'umwtWindowTargetId'
  Text ->
  UpdateMaintenanceWindowTarget
updateMaintenanceWindowTarget
  pWindowId_
  pWindowTargetId_ =
    UpdateMaintenanceWindowTarget'
      { _umwtTargets =
          Nothing,
        _umwtName = Nothing,
        _umwtReplace = Nothing,
        _umwtDescription = Nothing,
        _umwtOwnerInformation = Nothing,
        _umwtWindowId = pWindowId_,
        _umwtWindowTargetId = pWindowTargetId_
      }

-- | The targets to add or replace.
umwtTargets :: Lens' UpdateMaintenanceWindowTarget [Target]
umwtTargets = lens _umwtTargets (\s a -> s {_umwtTargets = a}) . _Default . _Coerce

-- | A name for the update.
umwtName :: Lens' UpdateMaintenanceWindowTarget (Maybe Text)
umwtName = lens _umwtName (\s a -> s {_umwtName = a})

-- | If True, then all fields that are required by the RegisterTargetWithMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
umwtReplace :: Lens' UpdateMaintenanceWindowTarget (Maybe Bool)
umwtReplace = lens _umwtReplace (\s a -> s {_umwtReplace = a})

-- | An optional description for the update.
umwtDescription :: Lens' UpdateMaintenanceWindowTarget (Maybe Text)
umwtDescription = lens _umwtDescription (\s a -> s {_umwtDescription = a}) . mapping _Sensitive

-- | User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this maintenance window.
umwtOwnerInformation :: Lens' UpdateMaintenanceWindowTarget (Maybe Text)
umwtOwnerInformation = lens _umwtOwnerInformation (\s a -> s {_umwtOwnerInformation = a}) . mapping _Sensitive

-- | The maintenance window ID with which to modify the target.
umwtWindowId :: Lens' UpdateMaintenanceWindowTarget Text
umwtWindowId = lens _umwtWindowId (\s a -> s {_umwtWindowId = a})

-- | The target ID to modify.
umwtWindowTargetId :: Lens' UpdateMaintenanceWindowTarget Text
umwtWindowTargetId = lens _umwtWindowTargetId (\s a -> s {_umwtWindowTargetId = a})

instance AWSRequest UpdateMaintenanceWindowTarget where
  type
    Rs UpdateMaintenanceWindowTarget =
      UpdateMaintenanceWindowTargetResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateMaintenanceWindowTargetResponse'
            <$> (x .?> "WindowTargetId")
            <*> (x .?> "Targets" .!@ mempty)
            <*> (x .?> "Name")
            <*> (x .?> "WindowId")
            <*> (x .?> "Description")
            <*> (x .?> "OwnerInformation")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateMaintenanceWindowTarget

instance NFData UpdateMaintenanceWindowTarget

instance ToHeaders UpdateMaintenanceWindowTarget where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.UpdateMaintenanceWindowTarget" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMaintenanceWindowTarget where
  toJSON UpdateMaintenanceWindowTarget' {..} =
    object
      ( catMaybes
          [ ("Targets" .=) <$> _umwtTargets,
            ("Name" .=) <$> _umwtName,
            ("Replace" .=) <$> _umwtReplace,
            ("Description" .=) <$> _umwtDescription,
            ("OwnerInformation" .=) <$> _umwtOwnerInformation,
            Just ("WindowId" .= _umwtWindowId),
            Just ("WindowTargetId" .= _umwtWindowTargetId)
          ]
      )

instance ToPath UpdateMaintenanceWindowTarget where
  toPath = const "/"

instance ToQuery UpdateMaintenanceWindowTarget where
  toQuery = const mempty

-- | /See:/ 'updateMaintenanceWindowTargetResponse' smart constructor.
data UpdateMaintenanceWindowTargetResponse = UpdateMaintenanceWindowTargetResponse'
  { _ursWindowTargetId ::
      !( Maybe
           Text
       ),
    _ursTargets ::
      !( Maybe
           [Target]
       ),
    _ursName ::
      !( Maybe
           Text
       ),
    _ursWindowId ::
      !( Maybe
           Text
       ),
    _ursDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _ursOwnerInformation ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _ursResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMaintenanceWindowTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursWindowTargetId' - The target ID specified in the update request.
--
-- * 'ursTargets' - The updated targets.
--
-- * 'ursName' - The updated name.
--
-- * 'ursWindowId' - The maintenance window ID specified in the update request.
--
-- * 'ursDescription' - The updated description.
--
-- * 'ursOwnerInformation' - The updated owner.
--
-- * 'ursResponseStatus' - -- | The response status code.
updateMaintenanceWindowTargetResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateMaintenanceWindowTargetResponse
updateMaintenanceWindowTargetResponse
  pResponseStatus_ =
    UpdateMaintenanceWindowTargetResponse'
      { _ursWindowTargetId =
          Nothing,
        _ursTargets = Nothing,
        _ursName = Nothing,
        _ursWindowId = Nothing,
        _ursDescription = Nothing,
        _ursOwnerInformation = Nothing,
        _ursResponseStatus =
          pResponseStatus_
      }

-- | The target ID specified in the update request.
ursWindowTargetId :: Lens' UpdateMaintenanceWindowTargetResponse (Maybe Text)
ursWindowTargetId = lens _ursWindowTargetId (\s a -> s {_ursWindowTargetId = a})

-- | The updated targets.
ursTargets :: Lens' UpdateMaintenanceWindowTargetResponse [Target]
ursTargets = lens _ursTargets (\s a -> s {_ursTargets = a}) . _Default . _Coerce

-- | The updated name.
ursName :: Lens' UpdateMaintenanceWindowTargetResponse (Maybe Text)
ursName = lens _ursName (\s a -> s {_ursName = a})

-- | The maintenance window ID specified in the update request.
ursWindowId :: Lens' UpdateMaintenanceWindowTargetResponse (Maybe Text)
ursWindowId = lens _ursWindowId (\s a -> s {_ursWindowId = a})

-- | The updated description.
ursDescription :: Lens' UpdateMaintenanceWindowTargetResponse (Maybe Text)
ursDescription = lens _ursDescription (\s a -> s {_ursDescription = a}) . mapping _Sensitive

-- | The updated owner.
ursOwnerInformation :: Lens' UpdateMaintenanceWindowTargetResponse (Maybe Text)
ursOwnerInformation = lens _ursOwnerInformation (\s a -> s {_ursOwnerInformation = a}) . mapping _Sensitive

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateMaintenanceWindowTargetResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateMaintenanceWindowTargetResponse
