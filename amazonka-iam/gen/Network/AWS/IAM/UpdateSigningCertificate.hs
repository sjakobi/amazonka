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
-- Module      : Network.AWS.IAM.UpdateSigningCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the status of the specified user signing certificate from active to disabled, or vice versa. This operation can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.
--
--
-- If the @UserName@ field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.
module Network.AWS.IAM.UpdateSigningCertificate
  ( -- * Creating a Request
    updateSigningCertificate,
    UpdateSigningCertificate,

    -- * Request Lenses
    updUserName,
    updCertificateId,
    updStatus,

    -- * Destructuring the Response
    updateSigningCertificateResponse,
    UpdateSigningCertificateResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateSigningCertificate' smart constructor.
data UpdateSigningCertificate = UpdateSigningCertificate'
  { _updUserName ::
      !(Maybe Text),
    _updCertificateId ::
      !Text,
    _updStatus ::
      !StatusType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateSigningCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updUserName' - The name of the IAM user the signing certificate belongs to. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'updCertificateId' - The ID of the signing certificate you want to update. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
--
-- * 'updStatus' - The status you want to assign to the certificate. @Active@ means that the certificate can be used for programmatic calls to AWS @Inactive@ means that the certificate cannot be used.
updateSigningCertificate ::
  -- | 'updCertificateId'
  Text ->
  -- | 'updStatus'
  StatusType ->
  UpdateSigningCertificate
updateSigningCertificate pCertificateId_ pStatus_ =
  UpdateSigningCertificate'
    { _updUserName = Nothing,
      _updCertificateId = pCertificateId_,
      _updStatus = pStatus_
    }

-- | The name of the IAM user the signing certificate belongs to. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
updUserName :: Lens' UpdateSigningCertificate (Maybe Text)
updUserName = lens _updUserName (\s a -> s {_updUserName = a})

-- | The ID of the signing certificate you want to update. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
updCertificateId :: Lens' UpdateSigningCertificate Text
updCertificateId = lens _updCertificateId (\s a -> s {_updCertificateId = a})

-- | The status you want to assign to the certificate. @Active@ means that the certificate can be used for programmatic calls to AWS @Inactive@ means that the certificate cannot be used.
updStatus :: Lens' UpdateSigningCertificate StatusType
updStatus = lens _updStatus (\s a -> s {_updStatus = a})

instance AWSRequest UpdateSigningCertificate where
  type
    Rs UpdateSigningCertificate =
      UpdateSigningCertificateResponse
  request = postQuery iam
  response =
    receiveNull UpdateSigningCertificateResponse'

instance Hashable UpdateSigningCertificate

instance NFData UpdateSigningCertificate

instance ToHeaders UpdateSigningCertificate where
  toHeaders = const mempty

instance ToPath UpdateSigningCertificate where
  toPath = const "/"

instance ToQuery UpdateSigningCertificate where
  toQuery UpdateSigningCertificate' {..} =
    mconcat
      [ "Action"
          =: ("UpdateSigningCertificate" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "UserName" =: _updUserName,
        "CertificateId" =: _updCertificateId,
        "Status" =: _updStatus
      ]

-- | /See:/ 'updateSigningCertificateResponse' smart constructor.
data UpdateSigningCertificateResponse = UpdateSigningCertificateResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateSigningCertificateResponse' with the minimum fields required to make a request.
updateSigningCertificateResponse ::
  UpdateSigningCertificateResponse
updateSigningCertificateResponse =
  UpdateSigningCertificateResponse'

instance NFData UpdateSigningCertificateResponse
