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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current, previous, or pending versions of the master user password for a Lightsail database.
--
--
-- The @GetRelationalDatabaseMasterUserPassword@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName.
module Network.AWS.Lightsail.GetRelationalDatabaseMasterUserPassword
  ( -- * Creating a Request
    getRelationalDatabaseMasterUserPassword,
    GetRelationalDatabaseMasterUserPassword,

    -- * Request Lenses
    grdmupPasswordVersion,
    grdmupRelationalDatabaseName,

    -- * Destructuring the Response
    getRelationalDatabaseMasterUserPasswordResponse,
    GetRelationalDatabaseMasterUserPasswordResponse,

    -- * Response Lenses
    grdmuprrsCreatedAt,
    grdmuprrsMasterUserPassword,
    grdmuprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseMasterUserPassword' smart constructor.
data GetRelationalDatabaseMasterUserPassword = GetRelationalDatabaseMasterUserPassword'
  { _grdmupPasswordVersion ::
      !( Maybe
           RelationalDatabasePasswordVersion
       ),
    _grdmupRelationalDatabaseName ::
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

-- | Creates a value of 'GetRelationalDatabaseMasterUserPassword' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdmupPasswordVersion' - The password version to return. Specifying @CURRENT@ or @PREVIOUS@ returns the current or previous passwords respectively. Specifying @PENDING@ returns the newest version of the password that will rotate to @CURRENT@ . After the @PENDING@ password rotates to @CURRENT@ , the @PENDING@ password is no longer available. Default: @CURRENT@
--
-- * 'grdmupRelationalDatabaseName' - The name of your database for which to get the master user password.
getRelationalDatabaseMasterUserPassword ::
  -- | 'grdmupRelationalDatabaseName'
  Text ->
  GetRelationalDatabaseMasterUserPassword
getRelationalDatabaseMasterUserPassword
  pRelationalDatabaseName_ =
    GetRelationalDatabaseMasterUserPassword'
      { _grdmupPasswordVersion =
          Nothing,
        _grdmupRelationalDatabaseName =
          pRelationalDatabaseName_
      }

-- | The password version to return. Specifying @CURRENT@ or @PREVIOUS@ returns the current or previous passwords respectively. Specifying @PENDING@ returns the newest version of the password that will rotate to @CURRENT@ . After the @PENDING@ password rotates to @CURRENT@ , the @PENDING@ password is no longer available. Default: @CURRENT@
grdmupPasswordVersion :: Lens' GetRelationalDatabaseMasterUserPassword (Maybe RelationalDatabasePasswordVersion)
grdmupPasswordVersion = lens _grdmupPasswordVersion (\s a -> s {_grdmupPasswordVersion = a})

-- | The name of your database for which to get the master user password.
grdmupRelationalDatabaseName :: Lens' GetRelationalDatabaseMasterUserPassword Text
grdmupRelationalDatabaseName = lens _grdmupRelationalDatabaseName (\s a -> s {_grdmupRelationalDatabaseName = a})

instance
  AWSRequest
    GetRelationalDatabaseMasterUserPassword
  where
  type
    Rs GetRelationalDatabaseMasterUserPassword =
      GetRelationalDatabaseMasterUserPasswordResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseMasterUserPasswordResponse'
            <$> (x .?> "createdAt")
            <*> (x .?> "masterUserPassword")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetRelationalDatabaseMasterUserPassword

instance
  NFData
    GetRelationalDatabaseMasterUserPassword

instance
  ToHeaders
    GetRelationalDatabaseMasterUserPassword
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseMasterUserPassword" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    GetRelationalDatabaseMasterUserPassword
  where
  toJSON GetRelationalDatabaseMasterUserPassword' {..} =
    object
      ( catMaybes
          [ ("passwordVersion" .=) <$> _grdmupPasswordVersion,
            Just
              ( "relationalDatabaseName"
                  .= _grdmupRelationalDatabaseName
              )
          ]
      )

instance
  ToPath
    GetRelationalDatabaseMasterUserPassword
  where
  toPath = const "/"

instance
  ToQuery
    GetRelationalDatabaseMasterUserPassword
  where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseMasterUserPasswordResponse' smart constructor.
data GetRelationalDatabaseMasterUserPasswordResponse = GetRelationalDatabaseMasterUserPasswordResponse'
  { _grdmuprrsCreatedAt ::
      !( Maybe
           POSIX
       ),
    _grdmuprrsMasterUserPassword ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _grdmuprrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRelationalDatabaseMasterUserPasswordResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdmuprrsCreatedAt' - The timestamp when the specified version of the master user password was created.
--
-- * 'grdmuprrsMasterUserPassword' - The master user password for the @password version@ specified.
--
-- * 'grdmuprrsResponseStatus' - -- | The response status code.
getRelationalDatabaseMasterUserPasswordResponse ::
  -- | 'grdmuprrsResponseStatus'
  Int ->
  GetRelationalDatabaseMasterUserPasswordResponse
getRelationalDatabaseMasterUserPasswordResponse
  pResponseStatus_ =
    GetRelationalDatabaseMasterUserPasswordResponse'
      { _grdmuprrsCreatedAt =
          Nothing,
        _grdmuprrsMasterUserPassword =
          Nothing,
        _grdmuprrsResponseStatus =
          pResponseStatus_
      }

-- | The timestamp when the specified version of the master user password was created.
grdmuprrsCreatedAt :: Lens' GetRelationalDatabaseMasterUserPasswordResponse (Maybe UTCTime)
grdmuprrsCreatedAt = lens _grdmuprrsCreatedAt (\s a -> s {_grdmuprrsCreatedAt = a}) . mapping _Time

-- | The master user password for the @password version@ specified.
grdmuprrsMasterUserPassword :: Lens' GetRelationalDatabaseMasterUserPasswordResponse (Maybe Text)
grdmuprrsMasterUserPassword = lens _grdmuprrsMasterUserPassword (\s a -> s {_grdmuprrsMasterUserPassword = a}) . mapping _Sensitive

-- | -- | The response status code.
grdmuprrsResponseStatus :: Lens' GetRelationalDatabaseMasterUserPasswordResponse Int
grdmuprrsResponseStatus = lens _grdmuprrsResponseStatus (\s a -> s {_grdmuprrsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseMasterUserPasswordResponse
