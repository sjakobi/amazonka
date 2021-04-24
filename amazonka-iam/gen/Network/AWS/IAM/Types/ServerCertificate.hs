{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.ServerCertificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ServerCertificate where

import Network.AWS.IAM.Types.ServerCertificateMetadata
import Network.AWS.IAM.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a server certificate.
--
--
-- This data type is used as a response element in the 'GetServerCertificate' operation.
--
--
-- /See:/ 'serverCertificate' smart constructor.
data ServerCertificate = ServerCertificate'
  { _sTags ::
      !(Maybe [Tag]),
    _sCertificateChain :: !(Maybe Text),
    _sServerCertificateMetadata ::
      !ServerCertificateMetadata,
    _sCertificateBody :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServerCertificate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTags' - A list of tags that are attached to the server certificate. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
--
-- * 'sCertificateChain' - The contents of the public key certificate chain.
--
-- * 'sServerCertificateMetadata' - The meta information of the server certificate, such as its name, path, ID, and ARN.
--
-- * 'sCertificateBody' - The contents of the public key certificate.
serverCertificate ::
  -- | 'sServerCertificateMetadata'
  ServerCertificateMetadata ->
  -- | 'sCertificateBody'
  Text ->
  ServerCertificate
serverCertificate
  pServerCertificateMetadata_
  pCertificateBody_ =
    ServerCertificate'
      { _sTags = Nothing,
        _sCertificateChain = Nothing,
        _sServerCertificateMetadata =
          pServerCertificateMetadata_,
        _sCertificateBody = pCertificateBody_
      }

-- | A list of tags that are attached to the server certificate. For more information about tagging, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html Tagging IAM resources> in the /IAM User Guide/ .
sTags :: Lens' ServerCertificate [Tag]
sTags = lens _sTags (\s a -> s {_sTags = a}) . _Default . _Coerce

-- | The contents of the public key certificate chain.
sCertificateChain :: Lens' ServerCertificate (Maybe Text)
sCertificateChain = lens _sCertificateChain (\s a -> s {_sCertificateChain = a})

-- | The meta information of the server certificate, such as its name, path, ID, and ARN.
sServerCertificateMetadata :: Lens' ServerCertificate ServerCertificateMetadata
sServerCertificateMetadata = lens _sServerCertificateMetadata (\s a -> s {_sServerCertificateMetadata = a})

-- | The contents of the public key certificate.
sCertificateBody :: Lens' ServerCertificate Text
sCertificateBody = lens _sCertificateBody (\s a -> s {_sCertificateBody = a})

instance FromXML ServerCertificate where
  parseXML x =
    ServerCertificate'
      <$> ( x .@? "Tags" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "CertificateChain")
      <*> (x .@ "ServerCertificateMetadata")
      <*> (x .@ "CertificateBody")

instance Hashable ServerCertificate

instance NFData ServerCertificate
