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
-- Module      : Network.AWS.Shield.DescribeEmergencyContactSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.
module Network.AWS.Shield.DescribeEmergencyContactSettings
  ( -- * Creating a Request
    describeEmergencyContactSettings,
    DescribeEmergencyContactSettings,

    -- * Destructuring the Response
    describeEmergencyContactSettingsResponse,
    DescribeEmergencyContactSettingsResponse,

    -- * Response Lenses
    decsrrsEmergencyContactList,
    decsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'describeEmergencyContactSettings' smart constructor.
data DescribeEmergencyContactSettings = DescribeEmergencyContactSettings'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEmergencyContactSettings' with the minimum fields required to make a request.
describeEmergencyContactSettings ::
  DescribeEmergencyContactSettings
describeEmergencyContactSettings =
  DescribeEmergencyContactSettings'

instance AWSRequest DescribeEmergencyContactSettings where
  type
    Rs DescribeEmergencyContactSettings =
      DescribeEmergencyContactSettingsResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          DescribeEmergencyContactSettingsResponse'
            <$> (x .?> "EmergencyContactList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEmergencyContactSettings

instance NFData DescribeEmergencyContactSettings

instance ToHeaders DescribeEmergencyContactSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShield_20160616.DescribeEmergencyContactSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEmergencyContactSettings where
  toJSON = const (Object mempty)

instance ToPath DescribeEmergencyContactSettings where
  toPath = const "/"

instance ToQuery DescribeEmergencyContactSettings where
  toQuery = const mempty

-- | /See:/ 'describeEmergencyContactSettingsResponse' smart constructor.
data DescribeEmergencyContactSettingsResponse = DescribeEmergencyContactSettingsResponse'
  { _decsrrsEmergencyContactList ::
      !( Maybe
           [EmergencyContact]
       ),
    _decsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEmergencyContactSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'decsrrsEmergencyContactList' - A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.
--
-- * 'decsrrsResponseStatus' - -- | The response status code.
describeEmergencyContactSettingsResponse ::
  -- | 'decsrrsResponseStatus'
  Int ->
  DescribeEmergencyContactSettingsResponse
describeEmergencyContactSettingsResponse
  pResponseStatus_ =
    DescribeEmergencyContactSettingsResponse'
      { _decsrrsEmergencyContactList =
          Nothing,
        _decsrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of email addresses and phone numbers that the DDoS Response Team (DRT) can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.
decsrrsEmergencyContactList :: Lens' DescribeEmergencyContactSettingsResponse [EmergencyContact]
decsrrsEmergencyContactList = lens _decsrrsEmergencyContactList (\s a -> s {_decsrrsEmergencyContactList = a}) . _Default . _Coerce

-- | -- | The response status code.
decsrrsResponseStatus :: Lens' DescribeEmergencyContactSettingsResponse Int
decsrrsResponseStatus = lens _decsrrsResponseStatus (\s a -> s {_decsrrsResponseStatus = a})

instance
  NFData
    DescribeEmergencyContactSettingsResponse
