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
-- Module      : Network.AWS.DeviceFarm.CreateInstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a profile that can be applied to one or more private fleet device instances.
module Network.AWS.DeviceFarm.CreateInstanceProfile
  ( -- * Creating a Request
    createInstanceProfile,
    CreateInstanceProfile,

    -- * Request Lenses
    cipExcludeAppPackagesFromCleanup,
    cipDescription,
    cipRebootAfterUse,
    cipPackageCleanup,
    cipName,

    -- * Destructuring the Response
    createInstanceProfileResponse,
    CreateInstanceProfileResponse,

    -- * Response Lenses
    ciprrsInstanceProfile,
    ciprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createInstanceProfile' smart constructor.
data CreateInstanceProfile = CreateInstanceProfile'
  { _cipExcludeAppPackagesFromCleanup ::
      !(Maybe [Text]),
    _cipDescription ::
      !(Maybe Text),
    _cipRebootAfterUse ::
      !(Maybe Bool),
    _cipPackageCleanup ::
      !(Maybe Bool),
    _cipName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateInstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cipExcludeAppPackagesFromCleanup' - An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run. The list of packages is considered only if you set @packageCleanup@ to @true@ .
--
-- * 'cipDescription' - The description of your instance profile.
--
-- * 'cipRebootAfterUse' - When set to @true@ , Device Farm reboots the instance after a test run. The default value is @true@ .
--
-- * 'cipPackageCleanup' - When set to @true@ , Device Farm removes app packages after a test run. The default value is @false@ for private devices.
--
-- * 'cipName' - The name of your instance profile.
createInstanceProfile ::
  -- | 'cipName'
  Text ->
  CreateInstanceProfile
createInstanceProfile pName_ =
  CreateInstanceProfile'
    { _cipExcludeAppPackagesFromCleanup =
        Nothing,
      _cipDescription = Nothing,
      _cipRebootAfterUse = Nothing,
      _cipPackageCleanup = Nothing,
      _cipName = pName_
    }

-- | An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run. The list of packages is considered only if you set @packageCleanup@ to @true@ .
cipExcludeAppPackagesFromCleanup :: Lens' CreateInstanceProfile [Text]
cipExcludeAppPackagesFromCleanup = lens _cipExcludeAppPackagesFromCleanup (\s a -> s {_cipExcludeAppPackagesFromCleanup = a}) . _Default . _Coerce

-- | The description of your instance profile.
cipDescription :: Lens' CreateInstanceProfile (Maybe Text)
cipDescription = lens _cipDescription (\s a -> s {_cipDescription = a})

-- | When set to @true@ , Device Farm reboots the instance after a test run. The default value is @true@ .
cipRebootAfterUse :: Lens' CreateInstanceProfile (Maybe Bool)
cipRebootAfterUse = lens _cipRebootAfterUse (\s a -> s {_cipRebootAfterUse = a})

-- | When set to @true@ , Device Farm removes app packages after a test run. The default value is @false@ for private devices.
cipPackageCleanup :: Lens' CreateInstanceProfile (Maybe Bool)
cipPackageCleanup = lens _cipPackageCleanup (\s a -> s {_cipPackageCleanup = a})

-- | The name of your instance profile.
cipName :: Lens' CreateInstanceProfile Text
cipName = lens _cipName (\s a -> s {_cipName = a})

instance AWSRequest CreateInstanceProfile where
  type
    Rs CreateInstanceProfile =
      CreateInstanceProfileResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          CreateInstanceProfileResponse'
            <$> (x .?> "instanceProfile") <*> (pure (fromEnum s))
      )

instance Hashable CreateInstanceProfile

instance NFData CreateInstanceProfile

instance ToHeaders CreateInstanceProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.CreateInstanceProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateInstanceProfile where
  toJSON CreateInstanceProfile' {..} =
    object
      ( catMaybes
          [ ("excludeAppPackagesFromCleanup" .=)
              <$> _cipExcludeAppPackagesFromCleanup,
            ("description" .=) <$> _cipDescription,
            ("rebootAfterUse" .=) <$> _cipRebootAfterUse,
            ("packageCleanup" .=) <$> _cipPackageCleanup,
            Just ("name" .= _cipName)
          ]
      )

instance ToPath CreateInstanceProfile where
  toPath = const "/"

instance ToQuery CreateInstanceProfile where
  toQuery = const mempty

-- | /See:/ 'createInstanceProfileResponse' smart constructor.
data CreateInstanceProfileResponse = CreateInstanceProfileResponse'
  { _ciprrsInstanceProfile ::
      !( Maybe
           InstanceProfile
       ),
    _ciprrsResponseStatus ::
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

-- | Creates a value of 'CreateInstanceProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciprrsInstanceProfile' - An object that contains information about your instance profile.
--
-- * 'ciprrsResponseStatus' - -- | The response status code.
createInstanceProfileResponse ::
  -- | 'ciprrsResponseStatus'
  Int ->
  CreateInstanceProfileResponse
createInstanceProfileResponse pResponseStatus_ =
  CreateInstanceProfileResponse'
    { _ciprrsInstanceProfile =
        Nothing,
      _ciprrsResponseStatus = pResponseStatus_
    }

-- | An object that contains information about your instance profile.
ciprrsInstanceProfile :: Lens' CreateInstanceProfileResponse (Maybe InstanceProfile)
ciprrsInstanceProfile = lens _ciprrsInstanceProfile (\s a -> s {_ciprrsInstanceProfile = a})

-- | -- | The response status code.
ciprrsResponseStatus :: Lens' CreateInstanceProfileResponse Int
ciprrsResponseStatus = lens _ciprrsResponseStatus (\s a -> s {_ciprrsResponseStatus = a})

instance NFData CreateInstanceProfileResponse
