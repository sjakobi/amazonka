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
-- Module      : Network.AWS.StorageGateway.ActivateGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates the gateway you previously deployed on your host. In the activation process, you specify information such as the AWS Region that you want to use for storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account. For more information, see 'UpdateGatewayInformation' .
module Network.AWS.StorageGateway.ActivateGateway
  ( -- * Creating a Request
    activateGateway,
    ActivateGateway,

    -- * Request Lenses
    agTapeDriveType,
    agGatewayType,
    agMediumChangerType,
    agTags,
    agActivationKey,
    agGatewayName,
    agGatewayTimezone,
    agGatewayRegion,

    -- * Destructuring the Response
    activateGatewayResponse,
    ActivateGatewayResponse,

    -- * Response Lenses
    agrrsGatewayARN,
    agrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing one or more of the following fields:
--
--
--     * 'ActivateGatewayInput$ActivationKey'
--
--     * 'ActivateGatewayInput$GatewayName'
--
--     * 'ActivateGatewayInput$GatewayRegion'
--
--     * 'ActivateGatewayInput$GatewayTimezone'
--
--     * 'ActivateGatewayInput$GatewayType'
--
--     * 'ActivateGatewayInput$MediumChangerType'
--
--     * 'ActivateGatewayInput$TapeDriveType'
--
--
--
--
-- /See:/ 'activateGateway' smart constructor.
data ActivateGateway = ActivateGateway'
  { _agTapeDriveType ::
      !(Maybe Text),
    _agGatewayType :: !(Maybe Text),
    _agMediumChangerType :: !(Maybe Text),
    _agTags :: !(Maybe [Tag]),
    _agActivationKey :: !Text,
    _agGatewayName :: !Text,
    _agGatewayTimezone :: !Text,
    _agGatewayRegion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivateGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agTapeDriveType' - The value that indicates the type of tape drive to use for tape gateway. This field is optional. Valid Values: @IBM-ULT3580-TD5@
--
-- * 'agGatewayType' - A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is @CACHED@ . Valid Values: @STORED@ | @CACHED@ | @VTL@ | @FILE_S3@
--
-- * 'agMediumChangerType' - The value that indicates the type of medium changer to use for tape gateway. This field is optional. Valid Values: @STK-L700@ | @AWS-Gateway-VTL@ | @IBM-03584L32-0402@
--
-- * 'agTags' - A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value pair.
--
-- * 'agActivationKey' - Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter @activationKey@ . It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the @ActivateGateway@ API call determine the actual configuration of your gateway. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html Getting activation key> in the /AWS Storage Gateway User Guide/ .
--
-- * 'agGatewayName' - The name you configured for your gateway.
--
-- * 'agGatewayTimezone' - A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
--
-- * 'agGatewayRegion' - A value that indicates the AWS Region where you want to store your data. The gateway AWS Region specified must be the same AWS Region as the AWS Region in your @Host@ header in the request. For more information about available AWS Regions and endpoints for AWS Storage Gateway, see <https://docs.aws.amazon.com/general/latest/gr/sg.html AWS Storage Gateway endpoints and quotas> in the /AWS General Reference/ . Valid Values: See <https://docs.aws.amazon.com/general/latest/gr/sg.html AWS Storage Gateway endpoints and quotas> in the /AWS General Reference/ .
activateGateway ::
  -- | 'agActivationKey'
  Text ->
  -- | 'agGatewayName'
  Text ->
  -- | 'agGatewayTimezone'
  Text ->
  -- | 'agGatewayRegion'
  Text ->
  ActivateGateway
activateGateway
  pActivationKey_
  pGatewayName_
  pGatewayTimezone_
  pGatewayRegion_ =
    ActivateGateway'
      { _agTapeDriveType = Nothing,
        _agGatewayType = Nothing,
        _agMediumChangerType = Nothing,
        _agTags = Nothing,
        _agActivationKey = pActivationKey_,
        _agGatewayName = pGatewayName_,
        _agGatewayTimezone = pGatewayTimezone_,
        _agGatewayRegion = pGatewayRegion_
      }

-- | The value that indicates the type of tape drive to use for tape gateway. This field is optional. Valid Values: @IBM-ULT3580-TD5@
agTapeDriveType :: Lens' ActivateGateway (Maybe Text)
agTapeDriveType = lens _agTapeDriveType (\s a -> s {_agTapeDriveType = a})

-- | A value that defines the type of gateway to activate. The type specified is critical to all later functions of the gateway and cannot be changed after activation. The default value is @CACHED@ . Valid Values: @STORED@ | @CACHED@ | @VTL@ | @FILE_S3@
agGatewayType :: Lens' ActivateGateway (Maybe Text)
agGatewayType = lens _agGatewayType (\s a -> s {_agGatewayType = a})

-- | The value that indicates the type of medium changer to use for tape gateway. This field is optional. Valid Values: @STK-L700@ | @AWS-Gateway-VTL@ | @IBM-03584L32-0402@
agMediumChangerType :: Lens' ActivateGateway (Maybe Text)
agMediumChangerType = lens _agMediumChangerType (\s a -> s {_agMediumChangerType = a})

-- | A list of up to 50 tags that you can assign to the gateway. Each tag is a key-value pair.
agTags :: Lens' ActivateGateway [Tag]
agTags = lens _agTags (\s a -> s {_agTags = a}) . _Default . _Coerce

-- | Your gateway activation key. You can obtain the activation key by sending an HTTP GET request with redirects enabled to the gateway IP address (port 80). The redirect URL returned in the response provides you the activation key for your gateway in the query string parameter @activationKey@ . It may also include other activation-related parameters, however, these are merely defaults -- the arguments you pass to the @ActivateGateway@ API call determine the actual configuration of your gateway. For more information, see <https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html Getting activation key> in the /AWS Storage Gateway User Guide/ .
agActivationKey :: Lens' ActivateGateway Text
agActivationKey = lens _agActivationKey (\s a -> s {_agActivationKey = a})

-- | The name you configured for your gateway.
agGatewayName :: Lens' ActivateGateway Text
agGatewayName = lens _agGatewayName (\s a -> s {_agGatewayName = a})

-- | A value that indicates the time zone you want to set for the gateway. The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
agGatewayTimezone :: Lens' ActivateGateway Text
agGatewayTimezone = lens _agGatewayTimezone (\s a -> s {_agGatewayTimezone = a})

-- | A value that indicates the AWS Region where you want to store your data. The gateway AWS Region specified must be the same AWS Region as the AWS Region in your @Host@ header in the request. For more information about available AWS Regions and endpoints for AWS Storage Gateway, see <https://docs.aws.amazon.com/general/latest/gr/sg.html AWS Storage Gateway endpoints and quotas> in the /AWS General Reference/ . Valid Values: See <https://docs.aws.amazon.com/general/latest/gr/sg.html AWS Storage Gateway endpoints and quotas> in the /AWS General Reference/ .
agGatewayRegion :: Lens' ActivateGateway Text
agGatewayRegion = lens _agGatewayRegion (\s a -> s {_agGatewayRegion = a})

instance AWSRequest ActivateGateway where
  type Rs ActivateGateway = ActivateGatewayResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ActivateGatewayResponse'
            <$> (x .?> "GatewayARN") <*> (pure (fromEnum s))
      )

instance Hashable ActivateGateway

instance NFData ActivateGateway

instance ToHeaders ActivateGateway where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ActivateGateway" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ActivateGateway where
  toJSON ActivateGateway' {..} =
    object
      ( catMaybes
          [ ("TapeDriveType" .=) <$> _agTapeDriveType,
            ("GatewayType" .=) <$> _agGatewayType,
            ("MediumChangerType" .=) <$> _agMediumChangerType,
            ("Tags" .=) <$> _agTags,
            Just ("ActivationKey" .= _agActivationKey),
            Just ("GatewayName" .= _agGatewayName),
            Just ("GatewayTimezone" .= _agGatewayTimezone),
            Just ("GatewayRegion" .= _agGatewayRegion)
          ]
      )

instance ToPath ActivateGateway where
  toPath = const "/"

instance ToQuery ActivateGateway where
  toQuery = const mempty

-- | AWS Storage Gateway returns the Amazon Resource Name (ARN) of the activated gateway. It is a string made of information such as your account, gateway name, and AWS Region. This ARN is used to reference the gateway in other API operations as well as resource-based authorization.
--
--
--
-- /See:/ 'activateGatewayResponse' smart constructor.
data ActivateGatewayResponse = ActivateGatewayResponse'
  { _agrrsGatewayARN ::
      !(Maybe Text),
    _agrrsResponseStatus ::
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

-- | Creates a value of 'ActivateGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agrrsGatewayARN' - Undocumented member.
--
-- * 'agrrsResponseStatus' - -- | The response status code.
activateGatewayResponse ::
  -- | 'agrrsResponseStatus'
  Int ->
  ActivateGatewayResponse
activateGatewayResponse pResponseStatus_ =
  ActivateGatewayResponse'
    { _agrrsGatewayARN =
        Nothing,
      _agrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
agrrsGatewayARN :: Lens' ActivateGatewayResponse (Maybe Text)
agrrsGatewayARN = lens _agrrsGatewayARN (\s a -> s {_agrrsGatewayARN = a})

-- | -- | The response status code.
agrrsResponseStatus :: Lens' ActivateGatewayResponse Int
agrrsResponseStatus = lens _agrrsResponseStatus (\s a -> s {_agrrsResponseStatus = a})

instance NFData ActivateGatewayResponse
