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
-- Module      : Network.AWS.MechanicalTurk.UpdateNotificationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @UpdateNotificationSettings@ operation creates, updates, disables or re-enables notifications for a HIT type. If you call the UpdateNotificationSettings operation for a HIT type that already has a notification specification, the operation replaces the old specification with a new one. You can call the UpdateNotificationSettings operation to enable or disable notifications for the HIT type, without having to modify the notification specification itself by providing updates to the Active status without specifying a new notification specification. To change the Active status of a HIT type's notifications, the HIT type must already have a notification specification, or one must be provided in the same call to @UpdateNotificationSettings@ .
module Network.AWS.MechanicalTurk.UpdateNotificationSettings
  ( -- * Creating a Request
    updateNotificationSettings,
    UpdateNotificationSettings,

    -- * Request Lenses
    unsActive,
    unsNotification,
    unsHITTypeId,

    -- * Destructuring the Response
    updateNotificationSettingsResponse,
    UpdateNotificationSettingsResponse,

    -- * Response Lenses
    unsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateNotificationSettings' smart constructor.
data UpdateNotificationSettings = UpdateNotificationSettings'
  { _unsActive ::
      !(Maybe Bool),
    _unsNotification ::
      !( Maybe
           NotificationSpecification
       ),
    _unsHITTypeId ::
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

-- | Creates a value of 'UpdateNotificationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unsActive' - Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed.
--
-- * 'unsNotification' - The notification specification for the HIT type.
--
-- * 'unsHITTypeId' - The ID of the HIT type whose notification specification is being updated.
updateNotificationSettings ::
  -- | 'unsHITTypeId'
  Text ->
  UpdateNotificationSettings
updateNotificationSettings pHITTypeId_ =
  UpdateNotificationSettings'
    { _unsActive = Nothing,
      _unsNotification = Nothing,
      _unsHITTypeId = pHITTypeId_
    }

-- | Specifies whether notifications are sent for HITs of this HIT type, according to the notification specification. You must specify either the Notification parameter or the Active parameter for the call to UpdateNotificationSettings to succeed.
unsActive :: Lens' UpdateNotificationSettings (Maybe Bool)
unsActive = lens _unsActive (\s a -> s {_unsActive = a})

-- | The notification specification for the HIT type.
unsNotification :: Lens' UpdateNotificationSettings (Maybe NotificationSpecification)
unsNotification = lens _unsNotification (\s a -> s {_unsNotification = a})

-- | The ID of the HIT type whose notification specification is being updated.
unsHITTypeId :: Lens' UpdateNotificationSettings Text
unsHITTypeId = lens _unsHITTypeId (\s a -> s {_unsHITTypeId = a})

instance AWSRequest UpdateNotificationSettings where
  type
    Rs UpdateNotificationSettings =
      UpdateNotificationSettingsResponse
  request = postJSON mechanicalTurk
  response =
    receiveEmpty
      ( \s h x ->
          UpdateNotificationSettingsResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable UpdateNotificationSettings

instance NFData UpdateNotificationSettings

instance ToHeaders UpdateNotificationSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.UpdateNotificationSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateNotificationSettings where
  toJSON UpdateNotificationSettings' {..} =
    object
      ( catMaybes
          [ ("Active" .=) <$> _unsActive,
            ("Notification" .=) <$> _unsNotification,
            Just ("HITTypeId" .= _unsHITTypeId)
          ]
      )

instance ToPath UpdateNotificationSettings where
  toPath = const "/"

instance ToQuery UpdateNotificationSettings where
  toQuery = const mempty

-- | /See:/ 'updateNotificationSettingsResponse' smart constructor.
newtype UpdateNotificationSettingsResponse = UpdateNotificationSettingsResponse'
  { _unsrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateNotificationSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unsrrsResponseStatus' - -- | The response status code.
updateNotificationSettingsResponse ::
  -- | 'unsrrsResponseStatus'
  Int ->
  UpdateNotificationSettingsResponse
updateNotificationSettingsResponse pResponseStatus_ =
  UpdateNotificationSettingsResponse'
    { _unsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
unsrrsResponseStatus :: Lens' UpdateNotificationSettingsResponse Int
unsrrsResponseStatus = lens _unsrrsResponseStatus (\s a -> s {_unsrrsResponseStatus = a})

instance NFData UpdateNotificationSettingsResponse
