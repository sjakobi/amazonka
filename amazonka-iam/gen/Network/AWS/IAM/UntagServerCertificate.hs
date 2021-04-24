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
-- Module      : Network.AWS.IAM.UntagServerCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified tags from the IAM server certificate. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
module Network.AWS.IAM.UntagServerCertificate
  ( -- * Creating a Request
    untagServerCertificate,
    UntagServerCertificate,

    -- * Request Lenses
    uscServerCertificateName,
    uscTagKeys,

    -- * Destructuring the Response
    untagServerCertificateResponse,
    UntagServerCertificateResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagServerCertificate' smart constructor.
data UntagServerCertificate = UntagServerCertificate'
  { _uscServerCertificateName ::
      !Text,
    _uscTagKeys :: ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagServerCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uscServerCertificateName' - The name of the IAM server certificate from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'uscTagKeys' - A list of key names as a simple array of strings. The tags with matching keys are removed from the specified IAM server certificate.
untagServerCertificate ::
  -- | 'uscServerCertificateName'
  Text ->
  UntagServerCertificate
untagServerCertificate pServerCertificateName_ =
  UntagServerCertificate'
    { _uscServerCertificateName =
        pServerCertificateName_,
      _uscTagKeys = mempty
    }

-- | The name of the IAM server certificate from which you want to remove tags. This parameter accepts (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
uscServerCertificateName :: Lens' UntagServerCertificate Text
uscServerCertificateName = lens _uscServerCertificateName (\s a -> s {_uscServerCertificateName = a})

-- | A list of key names as a simple array of strings. The tags with matching keys are removed from the specified IAM server certificate.
uscTagKeys :: Lens' UntagServerCertificate [Text]
uscTagKeys = lens _uscTagKeys (\s a -> s {_uscTagKeys = a}) . _Coerce

instance AWSRequest UntagServerCertificate where
  type
    Rs UntagServerCertificate =
      UntagServerCertificateResponse
  request = postQuery iam
  response =
    receiveNull UntagServerCertificateResponse'

instance Hashable UntagServerCertificate

instance NFData UntagServerCertificate

instance ToHeaders UntagServerCertificate where
  toHeaders = const mempty

instance ToPath UntagServerCertificate where
  toPath = const "/"

instance ToQuery UntagServerCertificate where
  toQuery UntagServerCertificate' {..} =
    mconcat
      [ "Action"
          =: ("UntagServerCertificate" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "ServerCertificateName" =: _uscServerCertificateName,
        "TagKeys" =: toQueryList "member" _uscTagKeys
      ]

-- | /See:/ 'untagServerCertificateResponse' smart constructor.
data UntagServerCertificateResponse = UntagServerCertificateResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagServerCertificateResponse' with the minimum fields required to make a request.
untagServerCertificateResponse ::
  UntagServerCertificateResponse
untagServerCertificateResponse =
  UntagServerCertificateResponse'

instance NFData UntagServerCertificateResponse
