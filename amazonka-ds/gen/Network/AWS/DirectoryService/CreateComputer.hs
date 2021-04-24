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
-- Module      : Network.AWS.DirectoryService.CreateComputer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Active Directory computer object in the specified directory.
module Network.AWS.DirectoryService.CreateComputer
  ( -- * Creating a Request
    createComputer,
    CreateComputer,

    -- * Request Lenses
    ccOrganizationalUnitDistinguishedName,
    ccComputerAttributes,
    ccDirectoryId,
    ccComputerName,
    ccPassword,

    -- * Destructuring the Response
    createComputerResponse,
    CreateComputerResponse,

    -- * Response Lenses
    ccrrsComputer,
    ccrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'CreateComputer' operation.
--
--
--
-- /See:/ 'createComputer' smart constructor.
data CreateComputer = CreateComputer'
  { _ccOrganizationalUnitDistinguishedName ::
      !(Maybe Text),
    _ccComputerAttributes ::
      !(Maybe [Attribute]),
    _ccDirectoryId :: !Text,
    _ccComputerName :: !Text,
    _ccPassword :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateComputer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccOrganizationalUnitDistinguishedName' - The fully-qualified distinguished name of the organizational unit to place the computer account in.
--
-- * 'ccComputerAttributes' - An array of 'Attribute' objects that contain any LDAP attributes to apply to the computer account.
--
-- * 'ccDirectoryId' - The identifier of the directory in which to create the computer account.
--
-- * 'ccComputerName' - The name of the computer account.
--
-- * 'ccPassword' - A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.
createComputer ::
  -- | 'ccDirectoryId'
  Text ->
  -- | 'ccComputerName'
  Text ->
  -- | 'ccPassword'
  Text ->
  CreateComputer
createComputer
  pDirectoryId_
  pComputerName_
  pPassword_ =
    CreateComputer'
      { _ccOrganizationalUnitDistinguishedName =
          Nothing,
        _ccComputerAttributes = Nothing,
        _ccDirectoryId = pDirectoryId_,
        _ccComputerName = pComputerName_,
        _ccPassword = _Sensitive # pPassword_
      }

-- | The fully-qualified distinguished name of the organizational unit to place the computer account in.
ccOrganizationalUnitDistinguishedName :: Lens' CreateComputer (Maybe Text)
ccOrganizationalUnitDistinguishedName = lens _ccOrganizationalUnitDistinguishedName (\s a -> s {_ccOrganizationalUnitDistinguishedName = a})

-- | An array of 'Attribute' objects that contain any LDAP attributes to apply to the computer account.
ccComputerAttributes :: Lens' CreateComputer [Attribute]
ccComputerAttributes = lens _ccComputerAttributes (\s a -> s {_ccComputerAttributes = a}) . _Default . _Coerce

-- | The identifier of the directory in which to create the computer account.
ccDirectoryId :: Lens' CreateComputer Text
ccDirectoryId = lens _ccDirectoryId (\s a -> s {_ccDirectoryId = a})

-- | The name of the computer account.
ccComputerName :: Lens' CreateComputer Text
ccComputerName = lens _ccComputerName (\s a -> s {_ccComputerName = a})

-- | A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.
ccPassword :: Lens' CreateComputer Text
ccPassword = lens _ccPassword (\s a -> s {_ccPassword = a}) . _Sensitive

instance AWSRequest CreateComputer where
  type Rs CreateComputer = CreateComputerResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          CreateComputerResponse'
            <$> (x .?> "Computer") <*> (pure (fromEnum s))
      )

instance Hashable CreateComputer

instance NFData CreateComputer

instance ToHeaders CreateComputer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.CreateComputer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateComputer where
  toJSON CreateComputer' {..} =
    object
      ( catMaybes
          [ ("OrganizationalUnitDistinguishedName" .=)
              <$> _ccOrganizationalUnitDistinguishedName,
            ("ComputerAttributes" .=) <$> _ccComputerAttributes,
            Just ("DirectoryId" .= _ccDirectoryId),
            Just ("ComputerName" .= _ccComputerName),
            Just ("Password" .= _ccPassword)
          ]
      )

instance ToPath CreateComputer where
  toPath = const "/"

instance ToQuery CreateComputer where
  toQuery = const mempty

-- | Contains the results for the 'CreateComputer' operation.
--
--
--
-- /See:/ 'createComputerResponse' smart constructor.
data CreateComputerResponse = CreateComputerResponse'
  { _ccrrsComputer ::
      !(Maybe Computer),
    _ccrrsResponseStatus ::
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

-- | Creates a value of 'CreateComputerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccrrsComputer' - A 'Computer' object that represents the computer account.
--
-- * 'ccrrsResponseStatus' - -- | The response status code.
createComputerResponse ::
  -- | 'ccrrsResponseStatus'
  Int ->
  CreateComputerResponse
createComputerResponse pResponseStatus_ =
  CreateComputerResponse'
    { _ccrrsComputer = Nothing,
      _ccrrsResponseStatus = pResponseStatus_
    }

-- | A 'Computer' object that represents the computer account.
ccrrsComputer :: Lens' CreateComputerResponse (Maybe Computer)
ccrrsComputer = lens _ccrrsComputer (\s a -> s {_ccrrsComputer = a})

-- | -- | The response status code.
ccrrsResponseStatus :: Lens' CreateComputerResponse Int
ccrrsResponseStatus = lens _ccrrsResponseStatus (\s a -> s {_ccrrsResponseStatus = a})

instance NFData CreateComputerResponse
