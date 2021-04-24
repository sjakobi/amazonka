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
-- Module      : Network.AWS.DeviceFarm.UpdateVPCEConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.
module Network.AWS.DeviceFarm.UpdateVPCEConfiguration
  ( -- * Creating a Request
    updateVPCEConfiguration,
    UpdateVPCEConfiguration,

    -- * Request Lenses
    uvecVpceConfigurationName,
    uvecVpceConfigurationDescription,
    uvecServiceDNSName,
    uvecVpceServiceName,
    uvecArn,

    -- * Destructuring the Response
    updateVPCEConfigurationResponse,
    UpdateVPCEConfigurationResponse,

    -- * Response Lenses
    uvecrrsVpceConfiguration,
    uvecrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateVPCEConfiguration' smart constructor.
data UpdateVPCEConfiguration = UpdateVPCEConfiguration'
  { _uvecVpceConfigurationName ::
      !(Maybe Text),
    _uvecVpceConfigurationDescription ::
      !(Maybe Text),
    _uvecServiceDNSName ::
      !(Maybe Text),
    _uvecVpceServiceName ::
      !(Maybe Text),
    _uvecArn :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateVPCEConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvecVpceConfigurationName' - The friendly name you give to your VPC endpoint configuration to manage your configurations more easily.
--
-- * 'uvecVpceConfigurationDescription' - An optional description that provides details about your VPC endpoint configuration.
--
-- * 'uvecServiceDNSName' - The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already be in use on the internet.
--
-- * 'uvecVpceServiceName' - The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.
--
-- * 'uvecArn' - The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to update.
updateVPCEConfiguration ::
  -- | 'uvecArn'
  Text ->
  UpdateVPCEConfiguration
updateVPCEConfiguration pArn_ =
  UpdateVPCEConfiguration'
    { _uvecVpceConfigurationName =
        Nothing,
      _uvecVpceConfigurationDescription = Nothing,
      _uvecServiceDNSName = Nothing,
      _uvecVpceServiceName = Nothing,
      _uvecArn = pArn_
    }

-- | The friendly name you give to your VPC endpoint configuration to manage your configurations more easily.
uvecVpceConfigurationName :: Lens' UpdateVPCEConfiguration (Maybe Text)
uvecVpceConfigurationName = lens _uvecVpceConfigurationName (\s a -> s {_uvecVpceConfigurationName = a})

-- | An optional description that provides details about your VPC endpoint configuration.
uvecVpceConfigurationDescription :: Lens' UpdateVPCEConfiguration (Maybe Text)
uvecVpceConfigurationDescription = lens _uvecVpceConfigurationDescription (\s a -> s {_uvecVpceConfigurationDescription = a})

-- | The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already be in use on the internet.
uvecServiceDNSName :: Lens' UpdateVPCEConfiguration (Maybe Text)
uvecServiceDNSName = lens _uvecServiceDNSName (\s a -> s {_uvecServiceDNSName = a})

-- | The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.
uvecVpceServiceName :: Lens' UpdateVPCEConfiguration (Maybe Text)
uvecVpceServiceName = lens _uvecVpceServiceName (\s a -> s {_uvecVpceServiceName = a})

-- | The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to update.
uvecArn :: Lens' UpdateVPCEConfiguration Text
uvecArn = lens _uvecArn (\s a -> s {_uvecArn = a})

instance AWSRequest UpdateVPCEConfiguration where
  type
    Rs UpdateVPCEConfiguration =
      UpdateVPCEConfigurationResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          UpdateVPCEConfigurationResponse'
            <$> (x .?> "vpceConfiguration") <*> (pure (fromEnum s))
      )

instance Hashable UpdateVPCEConfiguration

instance NFData UpdateVPCEConfiguration

instance ToHeaders UpdateVPCEConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.UpdateVPCEConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateVPCEConfiguration where
  toJSON UpdateVPCEConfiguration' {..} =
    object
      ( catMaybes
          [ ("vpceConfigurationName" .=)
              <$> _uvecVpceConfigurationName,
            ("vpceConfigurationDescription" .=)
              <$> _uvecVpceConfigurationDescription,
            ("serviceDnsName" .=) <$> _uvecServiceDNSName,
            ("vpceServiceName" .=) <$> _uvecVpceServiceName,
            Just ("arn" .= _uvecArn)
          ]
      )

instance ToPath UpdateVPCEConfiguration where
  toPath = const "/"

instance ToQuery UpdateVPCEConfiguration where
  toQuery = const mempty

-- | /See:/ 'updateVPCEConfigurationResponse' smart constructor.
data UpdateVPCEConfigurationResponse = UpdateVPCEConfigurationResponse'
  { _uvecrrsVpceConfiguration ::
      !( Maybe
           VPCEConfiguration
       ),
    _uvecrrsResponseStatus ::
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

-- | Creates a value of 'UpdateVPCEConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvecrrsVpceConfiguration' - An object that contains information about your VPC endpoint configuration.
--
-- * 'uvecrrsResponseStatus' - -- | The response status code.
updateVPCEConfigurationResponse ::
  -- | 'uvecrrsResponseStatus'
  Int ->
  UpdateVPCEConfigurationResponse
updateVPCEConfigurationResponse pResponseStatus_ =
  UpdateVPCEConfigurationResponse'
    { _uvecrrsVpceConfiguration =
        Nothing,
      _uvecrrsResponseStatus = pResponseStatus_
    }

-- | An object that contains information about your VPC endpoint configuration.
uvecrrsVpceConfiguration :: Lens' UpdateVPCEConfigurationResponse (Maybe VPCEConfiguration)
uvecrrsVpceConfiguration = lens _uvecrrsVpceConfiguration (\s a -> s {_uvecrrsVpceConfiguration = a})

-- | -- | The response status code.
uvecrrsResponseStatus :: Lens' UpdateVPCEConfigurationResponse Int
uvecrrsResponseStatus = lens _uvecrrsResponseStatus (\s a -> s {_uvecrrsResponseStatus = a})

instance NFData UpdateVPCEConfigurationResponse
