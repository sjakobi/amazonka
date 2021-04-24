{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.GeneralName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.GeneralName where

import Network.AWS.CertificateManagerPCA.Types.ASN1Subject
import Network.AWS.CertificateManagerPCA.Types.EdiPartyName
import Network.AWS.CertificateManagerPCA.Types.OtherName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an ASN.1 X.400 @GeneralName@ as defined in <https://tools.ietf.org/html/rfc5280 RFC 5280> . Only one of the following naming options should be provided. Providing more than one option results in an @InvalidArgsException@ error.
--
--
--
-- /See:/ 'generalName' smart constructor.
data GeneralName = GeneralName'
  { _gnEdiPartyName ::
      !(Maybe EdiPartyName),
    _gnOtherName :: !(Maybe OtherName),
    _gnUniformResourceIdentifier :: !(Maybe Text),
    _gnIPAddress :: !(Maybe Text),
    _gnDNSName :: !(Maybe Text),
    _gnDirectoryName :: !(Maybe ASN1Subject),
    _gnRfc822Name :: !(Maybe Text),
    _gnRegisteredId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GeneralName' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnEdiPartyName' - Represents @GeneralName@ as an @EdiPartyName@ object.
--
-- * 'gnOtherName' - Represents @GeneralName@ using an @OtherName@ object.
--
-- * 'gnUniformResourceIdentifier' - Represents @GeneralName@ as a URI.
--
-- * 'gnIPAddress' - Represents @GeneralName@ as an IPv4 or IPv6 address.
--
-- * 'gnDNSName' - Represents @GeneralName@ as a DNS name.
--
-- * 'gnDirectoryName' - Undocumented member.
--
-- * 'gnRfc822Name' - Represents @GeneralName@ as an <https://tools.ietf.org/html/rfc822 RFC 822> email address.
--
-- * 'gnRegisteredId' - Represents @GeneralName@ as an object identifier (OID).
generalName ::
  GeneralName
generalName =
  GeneralName'
    { _gnEdiPartyName = Nothing,
      _gnOtherName = Nothing,
      _gnUniformResourceIdentifier = Nothing,
      _gnIPAddress = Nothing,
      _gnDNSName = Nothing,
      _gnDirectoryName = Nothing,
      _gnRfc822Name = Nothing,
      _gnRegisteredId = Nothing
    }

-- | Represents @GeneralName@ as an @EdiPartyName@ object.
gnEdiPartyName :: Lens' GeneralName (Maybe EdiPartyName)
gnEdiPartyName = lens _gnEdiPartyName (\s a -> s {_gnEdiPartyName = a})

-- | Represents @GeneralName@ using an @OtherName@ object.
gnOtherName :: Lens' GeneralName (Maybe OtherName)
gnOtherName = lens _gnOtherName (\s a -> s {_gnOtherName = a})

-- | Represents @GeneralName@ as a URI.
gnUniformResourceIdentifier :: Lens' GeneralName (Maybe Text)
gnUniformResourceIdentifier = lens _gnUniformResourceIdentifier (\s a -> s {_gnUniformResourceIdentifier = a})

-- | Represents @GeneralName@ as an IPv4 or IPv6 address.
gnIPAddress :: Lens' GeneralName (Maybe Text)
gnIPAddress = lens _gnIPAddress (\s a -> s {_gnIPAddress = a})

-- | Represents @GeneralName@ as a DNS name.
gnDNSName :: Lens' GeneralName (Maybe Text)
gnDNSName = lens _gnDNSName (\s a -> s {_gnDNSName = a})

-- | Undocumented member.
gnDirectoryName :: Lens' GeneralName (Maybe ASN1Subject)
gnDirectoryName = lens _gnDirectoryName (\s a -> s {_gnDirectoryName = a})

-- | Represents @GeneralName@ as an <https://tools.ietf.org/html/rfc822 RFC 822> email address.
gnRfc822Name :: Lens' GeneralName (Maybe Text)
gnRfc822Name = lens _gnRfc822Name (\s a -> s {_gnRfc822Name = a})

-- | Represents @GeneralName@ as an object identifier (OID).
gnRegisteredId :: Lens' GeneralName (Maybe Text)
gnRegisteredId = lens _gnRegisteredId (\s a -> s {_gnRegisteredId = a})

instance FromJSON GeneralName where
  parseJSON =
    withObject
      "GeneralName"
      ( \x ->
          GeneralName'
            <$> (x .:? "EdiPartyName")
            <*> (x .:? "OtherName")
            <*> (x .:? "UniformResourceIdentifier")
            <*> (x .:? "IpAddress")
            <*> (x .:? "DnsName")
            <*> (x .:? "DirectoryName")
            <*> (x .:? "Rfc822Name")
            <*> (x .:? "RegisteredId")
      )

instance Hashable GeneralName

instance NFData GeneralName

instance ToJSON GeneralName where
  toJSON GeneralName' {..} =
    object
      ( catMaybes
          [ ("EdiPartyName" .=) <$> _gnEdiPartyName,
            ("OtherName" .=) <$> _gnOtherName,
            ("UniformResourceIdentifier" .=)
              <$> _gnUniformResourceIdentifier,
            ("IpAddress" .=) <$> _gnIPAddress,
            ("DnsName" .=) <$> _gnDNSName,
            ("DirectoryName" .=) <$> _gnDirectoryName,
            ("Rfc822Name" .=) <$> _gnRfc822Name,
            ("RegisteredId" .=) <$> _gnRegisteredId
          ]
      )
