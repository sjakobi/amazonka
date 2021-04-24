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
-- Module      : Network.AWS.WorkMail.DescribeResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data available for the resource.
module Network.AWS.WorkMail.DescribeResource
  ( -- * Creating a Request
    describeResource,
    DescribeResource,

    -- * Request Lenses
    drOrganizationId,
    drResourceId,

    -- * Destructuring the Response
    describeResourceResponse,
    DescribeResourceResponse,

    -- * Response Lenses
    drrrsResourceId,
    drrrsEnabledDate,
    drrrsState,
    drrrsName,
    drrrsEmail,
    drrrsDisabledDate,
    drrrsBookingOptions,
    drrrsType,
    drrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'describeResource' smart constructor.
data DescribeResource = DescribeResource'
  { _drOrganizationId ::
      !Text,
    _drResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drOrganizationId' - The identifier associated with the organization for which the resource is described.
--
-- * 'drResourceId' - The identifier of the resource to be described.
describeResource ::
  -- | 'drOrganizationId'
  Text ->
  -- | 'drResourceId'
  Text ->
  DescribeResource
describeResource pOrganizationId_ pResourceId_ =
  DescribeResource'
    { _drOrganizationId =
        pOrganizationId_,
      _drResourceId = pResourceId_
    }

-- | The identifier associated with the organization for which the resource is described.
drOrganizationId :: Lens' DescribeResource Text
drOrganizationId = lens _drOrganizationId (\s a -> s {_drOrganizationId = a})

-- | The identifier of the resource to be described.
drResourceId :: Lens' DescribeResource Text
drResourceId = lens _drResourceId (\s a -> s {_drResourceId = a})

instance AWSRequest DescribeResource where
  type Rs DescribeResource = DescribeResourceResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DescribeResourceResponse'
            <$> (x .?> "ResourceId")
            <*> (x .?> "EnabledDate")
            <*> (x .?> "State")
            <*> (x .?> "Name")
            <*> (x .?> "Email")
            <*> (x .?> "DisabledDate")
            <*> (x .?> "BookingOptions")
            <*> (x .?> "Type")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeResource

instance NFData DescribeResource

instance ToHeaders DescribeResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.DescribeResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeResource where
  toJSON DescribeResource' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _drOrganizationId),
            Just ("ResourceId" .= _drResourceId)
          ]
      )

instance ToPath DescribeResource where
  toPath = const "/"

instance ToQuery DescribeResource where
  toQuery = const mempty

-- | /See:/ 'describeResourceResponse' smart constructor.
data DescribeResourceResponse = DescribeResourceResponse'
  { _drrrsResourceId ::
      !(Maybe Text),
    _drrrsEnabledDate ::
      !(Maybe POSIX),
    _drrrsState ::
      !(Maybe EntityState),
    _drrrsName ::
      !(Maybe Text),
    _drrrsEmail ::
      !(Maybe Text),
    _drrrsDisabledDate ::
      !(Maybe POSIX),
    _drrrsBookingOptions ::
      !( Maybe
           BookingOptions
       ),
    _drrrsType ::
      !(Maybe ResourceType),
    _drrrsResponseStatus ::
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

-- | Creates a value of 'DescribeResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsResourceId' - The identifier of the described resource.
--
-- * 'drrrsEnabledDate' - The date and time when a resource was enabled for WorkMail, in UNIX epoch time format.
--
-- * 'drrrsState' - The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered or never registered to WorkMail), or deleted.
--
-- * 'drrrsName' - The name of the described resource.
--
-- * 'drrrsEmail' - The email of the described resource.
--
-- * 'drrrsDisabledDate' - The date and time when a resource was disabled from WorkMail, in UNIX epoch time format.
--
-- * 'drrrsBookingOptions' - The booking options for the described resource.
--
-- * 'drrrsType' - The type of the described resource.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeResourceResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeResourceResponse
describeResourceResponse pResponseStatus_ =
  DescribeResourceResponse'
    { _drrrsResourceId =
        Nothing,
      _drrrsEnabledDate = Nothing,
      _drrrsState = Nothing,
      _drrrsName = Nothing,
      _drrrsEmail = Nothing,
      _drrrsDisabledDate = Nothing,
      _drrrsBookingOptions = Nothing,
      _drrrsType = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the described resource.
drrrsResourceId :: Lens' DescribeResourceResponse (Maybe Text)
drrrsResourceId = lens _drrrsResourceId (\s a -> s {_drrrsResourceId = a})

-- | The date and time when a resource was enabled for WorkMail, in UNIX epoch time format.
drrrsEnabledDate :: Lens' DescribeResourceResponse (Maybe UTCTime)
drrrsEnabledDate = lens _drrrsEnabledDate (\s a -> s {_drrrsEnabledDate = a}) . mapping _Time

-- | The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered or never registered to WorkMail), or deleted.
drrrsState :: Lens' DescribeResourceResponse (Maybe EntityState)
drrrsState = lens _drrrsState (\s a -> s {_drrrsState = a})

-- | The name of the described resource.
drrrsName :: Lens' DescribeResourceResponse (Maybe Text)
drrrsName = lens _drrrsName (\s a -> s {_drrrsName = a})

-- | The email of the described resource.
drrrsEmail :: Lens' DescribeResourceResponse (Maybe Text)
drrrsEmail = lens _drrrsEmail (\s a -> s {_drrrsEmail = a})

-- | The date and time when a resource was disabled from WorkMail, in UNIX epoch time format.
drrrsDisabledDate :: Lens' DescribeResourceResponse (Maybe UTCTime)
drrrsDisabledDate = lens _drrrsDisabledDate (\s a -> s {_drrrsDisabledDate = a}) . mapping _Time

-- | The booking options for the described resource.
drrrsBookingOptions :: Lens' DescribeResourceResponse (Maybe BookingOptions)
drrrsBookingOptions = lens _drrrsBookingOptions (\s a -> s {_drrrsBookingOptions = a})

-- | The type of the described resource.
drrrsType :: Lens' DescribeResourceResponse (Maybe ResourceType)
drrrsType = lens _drrrsType (\s a -> s {_drrrsType = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeResourceResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeResourceResponse
