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
-- Module      : Network.AWS.DirectoryService.DescribeLDAPSSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of LDAP security for the specified directory.
module Network.AWS.DirectoryService.DescribeLDAPSSettings
  ( -- * Creating a Request
    describeLDAPSSettings,
    DescribeLDAPSSettings,

    -- * Request Lenses
    dldapssNextToken,
    dldapssType,
    dldapssLimit,
    dldapssDirectoryId,

    -- * Destructuring the Response
    describeLDAPSSettingsResponse,
    DescribeLDAPSSettingsResponse,

    -- * Response Lenses
    dldapssrrsNextToken,
    dldapssrrsLDAPSSettingsInfo,
    dldapssrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLDAPSSettings' smart constructor.
data DescribeLDAPSSettings = DescribeLDAPSSettings'
  { _dldapssNextToken ::
      !(Maybe Text),
    _dldapssType ::
      !(Maybe LDAPSType),
    _dldapssLimit ::
      !(Maybe Nat),
    _dldapssDirectoryId ::
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

-- | Creates a value of 'DescribeLDAPSSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldapssNextToken' - The type of next token used for pagination.
--
-- * 'dldapssType' - The type of LDAP security to enable. Currently only the value @Client@ is supported.
--
-- * 'dldapssLimit' - Specifies the number of items that should be displayed on one page.
--
-- * 'dldapssDirectoryId' - The identifier of the directory.
describeLDAPSSettings ::
  -- | 'dldapssDirectoryId'
  Text ->
  DescribeLDAPSSettings
describeLDAPSSettings pDirectoryId_ =
  DescribeLDAPSSettings'
    { _dldapssNextToken = Nothing,
      _dldapssType = Nothing,
      _dldapssLimit = Nothing,
      _dldapssDirectoryId = pDirectoryId_
    }

-- | The type of next token used for pagination.
dldapssNextToken :: Lens' DescribeLDAPSSettings (Maybe Text)
dldapssNextToken = lens _dldapssNextToken (\s a -> s {_dldapssNextToken = a})

-- | The type of LDAP security to enable. Currently only the value @Client@ is supported.
dldapssType :: Lens' DescribeLDAPSSettings (Maybe LDAPSType)
dldapssType = lens _dldapssType (\s a -> s {_dldapssType = a})

-- | Specifies the number of items that should be displayed on one page.
dldapssLimit :: Lens' DescribeLDAPSSettings (Maybe Natural)
dldapssLimit = lens _dldapssLimit (\s a -> s {_dldapssLimit = a}) . mapping _Nat

-- | The identifier of the directory.
dldapssDirectoryId :: Lens' DescribeLDAPSSettings Text
dldapssDirectoryId = lens _dldapssDirectoryId (\s a -> s {_dldapssDirectoryId = a})

instance AWSRequest DescribeLDAPSSettings where
  type
    Rs DescribeLDAPSSettings =
      DescribeLDAPSSettingsResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          DescribeLDAPSSettingsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "LDAPSSettingsInfo" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLDAPSSettings

instance NFData DescribeLDAPSSettings

instance ToHeaders DescribeLDAPSSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.DescribeLDAPSSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeLDAPSSettings where
  toJSON DescribeLDAPSSettings' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dldapssNextToken,
            ("Type" .=) <$> _dldapssType,
            ("Limit" .=) <$> _dldapssLimit,
            Just ("DirectoryId" .= _dldapssDirectoryId)
          ]
      )

instance ToPath DescribeLDAPSSettings where
  toPath = const "/"

instance ToQuery DescribeLDAPSSettings where
  toQuery = const mempty

-- | /See:/ 'describeLDAPSSettingsResponse' smart constructor.
data DescribeLDAPSSettingsResponse = DescribeLDAPSSettingsResponse'
  { _dldapssrrsNextToken ::
      !( Maybe
           Text
       ),
    _dldapssrrsLDAPSSettingsInfo ::
      !( Maybe
           [LDAPSSettingInfo]
       ),
    _dldapssrrsResponseStatus ::
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

-- | Creates a value of 'DescribeLDAPSSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dldapssrrsNextToken' - The next token used to retrieve the LDAPS settings if the number of setting types exceeds page limit and there is another page.
--
-- * 'dldapssrrsLDAPSSettingsInfo' - Information about LDAP security for the specified directory, including status of enablement, state last updated date time, and the reason for the state.
--
-- * 'dldapssrrsResponseStatus' - -- | The response status code.
describeLDAPSSettingsResponse ::
  -- | 'dldapssrrsResponseStatus'
  Int ->
  DescribeLDAPSSettingsResponse
describeLDAPSSettingsResponse pResponseStatus_ =
  DescribeLDAPSSettingsResponse'
    { _dldapssrrsNextToken =
        Nothing,
      _dldapssrrsLDAPSSettingsInfo = Nothing,
      _dldapssrrsResponseStatus = pResponseStatus_
    }

-- | The next token used to retrieve the LDAPS settings if the number of setting types exceeds page limit and there is another page.
dldapssrrsNextToken :: Lens' DescribeLDAPSSettingsResponse (Maybe Text)
dldapssrrsNextToken = lens _dldapssrrsNextToken (\s a -> s {_dldapssrrsNextToken = a})

-- | Information about LDAP security for the specified directory, including status of enablement, state last updated date time, and the reason for the state.
dldapssrrsLDAPSSettingsInfo :: Lens' DescribeLDAPSSettingsResponse [LDAPSSettingInfo]
dldapssrrsLDAPSSettingsInfo = lens _dldapssrrsLDAPSSettingsInfo (\s a -> s {_dldapssrrsLDAPSSettingsInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
dldapssrrsResponseStatus :: Lens' DescribeLDAPSSettingsResponse Int
dldapssrrsResponseStatus = lens _dldapssrrsResponseStatus (\s a -> s {_dldapssrrsResponseStatus = a})

instance NFData DescribeLDAPSSettingsResponse
