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
-- Module      : Network.AWS.IAM.UploadServerCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.
--
--
-- We recommend that you use <https://docs.aws.amazon.com/acm/ AWS Certificate Manager> to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the <https://docs.aws.amazon.com/acm/latest/userguide/ AWS Certificate Manager User Guide> .
--
-- For more information about working with server certificates, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html Working with server certificates> in the /IAM User Guide/ . This topic includes a list of AWS services that can use the server certificates that you manage with IAM.
--
-- For information about the number of server certificates you can upload, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html IAM and STS quotas> in the /IAM User Guide/ .
module Network.AWS.IAM.UploadServerCertificate
  ( -- * Creating a Request
    uploadServerCertificate,
    UploadServerCertificate,

    -- * Request Lenses
    uplTags,
    uplCertificateChain,
    uplPath,
    uplServerCertificateName,
    uplCertificateBody,
    uplPrivateKey,

    -- * Destructuring the Response
    uploadServerCertificateResponse,
    UploadServerCertificateResponse,

    -- * Response Lenses
    uscrrsServerCertificateMetadata,
    uscrrsTags,
    uscrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'uploadServerCertificate' smart constructor.
data UploadServerCertificate = UploadServerCertificate'
  { _uplTags ::
      !(Maybe [Tag]),
    _uplCertificateChain ::
      !(Maybe Text),
    _uplPath ::
      !(Maybe Text),
    _uplServerCertificateName ::
      !Text,
    _uplCertificateBody ::
      !Text,
    _uplPrivateKey ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UploadServerCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uplTags' - A list of tags that you want to attach to the new IAM server certificate resource. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'uplCertificateChain' - The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
--
-- * 'uplPath' - The path for the server certificate. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ . This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- * 'uplServerCertificateName' - The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'uplCertificateBody' - The contents of the public key certificate in PEM-encoded format. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
--
-- * 'uplPrivateKey' - The contents of the private key in PEM-encoded format. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uploadServerCertificate ::
  -- | 'uplServerCertificateName'
  Text ->
  -- | 'uplCertificateBody'
  Text ->
  -- | 'uplPrivateKey'
  Text ->
  UploadServerCertificate
uploadServerCertificate
  pServerCertificateName_
  pCertificateBody_
  pPrivateKey_ =
    UploadServerCertificate'
      { _uplTags = Nothing,
        _uplCertificateChain = Nothing,
        _uplPath = Nothing,
        _uplServerCertificateName =
          pServerCertificateName_,
        _uplCertificateBody = pCertificateBody_,
        _uplPrivateKey = _Sensitive # pPrivateKey_
      }

-- | A list of tags that you want to attach to the new IAM server certificate resource. Each tag consists of a key name and an associated value. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
uplTags :: Lens' UploadServerCertificate [Tag]
uplTags = lens _uplTags (\s a -> s {_uplTags = a}) . _Default . _Coerce

-- | The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uplCertificateChain :: Lens' UploadServerCertificate (Maybe Text)
uplCertificateChain = lens _uplCertificateChain (\s a -> s {_uplCertificateChain = a})

-- | The path for the server certificate. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM identifiers> in the /IAM User Guide/ . This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
uplPath :: Lens' UploadServerCertificate (Maybe Text)
uplPath = lens _uplPath (\s a -> s {_uplPath = a})

-- | The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
uplServerCertificateName :: Lens' UploadServerCertificate Text
uplServerCertificateName = lens _uplServerCertificateName (\s a -> s {_uplServerCertificateName = a})

-- | The contents of the public key certificate in PEM-encoded format. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uplCertificateBody :: Lens' UploadServerCertificate Text
uplCertificateBody = lens _uplCertificateBody (\s a -> s {_uplCertificateBody = a})

-- | The contents of the private key in PEM-encoded format. The <http://wikipedia.org/wiki/regex regex pattern> used to validate this parameter is a string of characters consisting of the following:     * Any printable ASCII character ranging from the space character (@\u0020@ ) through the end of the ASCII character range     * The printable characters in the Basic Latin and Latin-1 Supplement character set (through @\u00FF@ )     * The special characters tab (@\u0009@ ), line feed (@\u000A@ ), and carriage return (@\u000D@ )
uplPrivateKey :: Lens' UploadServerCertificate Text
uplPrivateKey = lens _uplPrivateKey (\s a -> s {_uplPrivateKey = a}) . _Sensitive

instance AWSRequest UploadServerCertificate where
  type
    Rs UploadServerCertificate =
      UploadServerCertificateResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "UploadServerCertificateResult"
      ( \s h x ->
          UploadServerCertificateResponse'
            <$> (x .@? "ServerCertificateMetadata")
            <*> ( x .@? "Tags" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable UploadServerCertificate

instance NFData UploadServerCertificate

instance ToHeaders UploadServerCertificate where
  toHeaders = const mempty

instance ToPath UploadServerCertificate where
  toPath = const "/"

instance ToQuery UploadServerCertificate where
  toQuery UploadServerCertificate' {..} =
    mconcat
      [ "Action"
          =: ("UploadServerCertificate" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "Tags"
          =: toQuery (toQueryList "member" <$> _uplTags),
        "CertificateChain" =: _uplCertificateChain,
        "Path" =: _uplPath,
        "ServerCertificateName" =: _uplServerCertificateName,
        "CertificateBody" =: _uplCertificateBody,
        "PrivateKey" =: _uplPrivateKey
      ]

-- | Contains the response to a successful 'UploadServerCertificate' request.
--
--
--
-- /See:/ 'uploadServerCertificateResponse' smart constructor.
data UploadServerCertificateResponse = UploadServerCertificateResponse'
  { _uscrrsServerCertificateMetadata ::
      !( Maybe
           ServerCertificateMetadata
       ),
    _uscrrsTags ::
      !( Maybe
           [Tag]
       ),
    _uscrrsResponseStatus ::
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

-- | Creates a value of 'UploadServerCertificateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uscrrsServerCertificateMetadata' - The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.
--
-- * 'uscrrsTags' - A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'uscrrsResponseStatus' - -- | The response status code.
uploadServerCertificateResponse ::
  -- | 'uscrrsResponseStatus'
  Int ->
  UploadServerCertificateResponse
uploadServerCertificateResponse pResponseStatus_ =
  UploadServerCertificateResponse'
    { _uscrrsServerCertificateMetadata =
        Nothing,
      _uscrrsTags = Nothing,
      _uscrrsResponseStatus = pResponseStatus_
    }

-- | The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.
uscrrsServerCertificateMetadata :: Lens' UploadServerCertificateResponse (Maybe ServerCertificateMetadata)
uscrrsServerCertificateMetadata = lens _uscrrsServerCertificateMetadata (\s a -> s {_uscrrsServerCertificateMetadata = a})

-- | A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
uscrrsTags :: Lens' UploadServerCertificateResponse [Tag]
uscrrsTags = lens _uscrrsTags (\s a -> s {_uscrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
uscrrsResponseStatus :: Lens' UploadServerCertificateResponse Int
uscrrsResponseStatus = lens _uscrrsResponseStatus (\s a -> s {_uscrrsResponseStatus = a})

instance NFData UploadServerCertificateResponse
