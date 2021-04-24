{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.ASN1Subject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.ASN1Subject where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about the certificate subject. The @Subject@ field in the certificate identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service. The @Subject @ must contain an X.500 distinguished name (DN). A DN is a sequence of relative distinguished names (RDNs). The RDNs are separated by commas in the certificate.
--
--
--
-- /See:/ 'asn1Subject' smart constructor.
data ASN1Subject = ASN1Subject'
  { _asLocality ::
      !(Maybe Text),
    _asGenerationQualifier :: !(Maybe Text),
    _asSurname :: !(Maybe Text),
    _asTitle :: !(Maybe Text),
    _asOrganizationalUnit :: !(Maybe Text),
    _asInitials :: !(Maybe Text),
    _asPseudonym :: !(Maybe Text),
    _asCommonName :: !(Maybe Text),
    _asState :: !(Maybe Text),
    _asGivenName :: !(Maybe Text),
    _asOrganization :: !(Maybe Text),
    _asDistinguishedNameQualifier :: !(Maybe Text),
    _asSerialNumber :: !(Maybe Text),
    _asCountry :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ASN1Subject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asLocality' - The locality (such as a city or town) in which the certificate subject is located.
--
-- * 'asGenerationQualifier' - Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third.
--
-- * 'asSurname' - Family name. In the US and the UK, for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first.
--
-- * 'asTitle' - A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the certificate subject.
--
-- * 'asOrganizationalUnit' - A subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated.
--
-- * 'asInitials' - Concatenation that typically contains the first letter of the __GivenName__ , the first letter of the middle name if one exists, and the first letter of the __Surname__ .
--
-- * 'asPseudonym' - Typically a shortened version of a longer __GivenName__ . For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza.
--
-- * 'asCommonName' - For CA and end-entity certificates in a private PKI, the common name (CN) can be any string within the length limit.  Note: In publicly trusted certificates, the common name must be a fully qualified domain name (FQDN) associated with the certificate subject.
--
-- * 'asState' - State in which the subject of the certificate is located.
--
-- * 'asGivenName' - First name.
--
-- * 'asOrganization' - Legal name of the organization with which the certificate subject is affiliated.
--
-- * 'asDistinguishedNameQualifier' - Disambiguating information for the certificate subject.
--
-- * 'asSerialNumber' - The certificate serial number.
--
-- * 'asCountry' - Two-digit code that specifies the country in which the certificate subject located.
asn1Subject ::
  ASN1Subject
asn1Subject =
  ASN1Subject'
    { _asLocality = Nothing,
      _asGenerationQualifier = Nothing,
      _asSurname = Nothing,
      _asTitle = Nothing,
      _asOrganizationalUnit = Nothing,
      _asInitials = Nothing,
      _asPseudonym = Nothing,
      _asCommonName = Nothing,
      _asState = Nothing,
      _asGivenName = Nothing,
      _asOrganization = Nothing,
      _asDistinguishedNameQualifier = Nothing,
      _asSerialNumber = Nothing,
      _asCountry = Nothing
    }

-- | The locality (such as a city or town) in which the certificate subject is located.
asLocality :: Lens' ASN1Subject (Maybe Text)
asLocality = lens _asLocality (\s a -> s {_asLocality = a})

-- | Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third.
asGenerationQualifier :: Lens' ASN1Subject (Maybe Text)
asGenerationQualifier = lens _asGenerationQualifier (\s a -> s {_asGenerationQualifier = a})

-- | Family name. In the US and the UK, for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first.
asSurname :: Lens' ASN1Subject (Maybe Text)
asSurname = lens _asSurname (\s a -> s {_asSurname = a})

-- | A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the certificate subject.
asTitle :: Lens' ASN1Subject (Maybe Text)
asTitle = lens _asTitle (\s a -> s {_asTitle = a})

-- | A subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated.
asOrganizationalUnit :: Lens' ASN1Subject (Maybe Text)
asOrganizationalUnit = lens _asOrganizationalUnit (\s a -> s {_asOrganizationalUnit = a})

-- | Concatenation that typically contains the first letter of the __GivenName__ , the first letter of the middle name if one exists, and the first letter of the __Surname__ .
asInitials :: Lens' ASN1Subject (Maybe Text)
asInitials = lens _asInitials (\s a -> s {_asInitials = a})

-- | Typically a shortened version of a longer __GivenName__ . For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza.
asPseudonym :: Lens' ASN1Subject (Maybe Text)
asPseudonym = lens _asPseudonym (\s a -> s {_asPseudonym = a})

-- | For CA and end-entity certificates in a private PKI, the common name (CN) can be any string within the length limit.  Note: In publicly trusted certificates, the common name must be a fully qualified domain name (FQDN) associated with the certificate subject.
asCommonName :: Lens' ASN1Subject (Maybe Text)
asCommonName = lens _asCommonName (\s a -> s {_asCommonName = a})

-- | State in which the subject of the certificate is located.
asState :: Lens' ASN1Subject (Maybe Text)
asState = lens _asState (\s a -> s {_asState = a})

-- | First name.
asGivenName :: Lens' ASN1Subject (Maybe Text)
asGivenName = lens _asGivenName (\s a -> s {_asGivenName = a})

-- | Legal name of the organization with which the certificate subject is affiliated.
asOrganization :: Lens' ASN1Subject (Maybe Text)
asOrganization = lens _asOrganization (\s a -> s {_asOrganization = a})

-- | Disambiguating information for the certificate subject.
asDistinguishedNameQualifier :: Lens' ASN1Subject (Maybe Text)
asDistinguishedNameQualifier = lens _asDistinguishedNameQualifier (\s a -> s {_asDistinguishedNameQualifier = a})

-- | The certificate serial number.
asSerialNumber :: Lens' ASN1Subject (Maybe Text)
asSerialNumber = lens _asSerialNumber (\s a -> s {_asSerialNumber = a})

-- | Two-digit code that specifies the country in which the certificate subject located.
asCountry :: Lens' ASN1Subject (Maybe Text)
asCountry = lens _asCountry (\s a -> s {_asCountry = a})

instance FromJSON ASN1Subject where
  parseJSON =
    withObject
      "ASN1Subject"
      ( \x ->
          ASN1Subject'
            <$> (x .:? "Locality")
            <*> (x .:? "GenerationQualifier")
            <*> (x .:? "Surname")
            <*> (x .:? "Title")
            <*> (x .:? "OrganizationalUnit")
            <*> (x .:? "Initials")
            <*> (x .:? "Pseudonym")
            <*> (x .:? "CommonName")
            <*> (x .:? "State")
            <*> (x .:? "GivenName")
            <*> (x .:? "Organization")
            <*> (x .:? "DistinguishedNameQualifier")
            <*> (x .:? "SerialNumber")
            <*> (x .:? "Country")
      )

instance Hashable ASN1Subject

instance NFData ASN1Subject

instance ToJSON ASN1Subject where
  toJSON ASN1Subject' {..} =
    object
      ( catMaybes
          [ ("Locality" .=) <$> _asLocality,
            ("GenerationQualifier" .=)
              <$> _asGenerationQualifier,
            ("Surname" .=) <$> _asSurname,
            ("Title" .=) <$> _asTitle,
            ("OrganizationalUnit" .=) <$> _asOrganizationalUnit,
            ("Initials" .=) <$> _asInitials,
            ("Pseudonym" .=) <$> _asPseudonym,
            ("CommonName" .=) <$> _asCommonName,
            ("State" .=) <$> _asState,
            ("GivenName" .=) <$> _asGivenName,
            ("Organization" .=) <$> _asOrganization,
            ("DistinguishedNameQualifier" .=)
              <$> _asDistinguishedNameQualifier,
            ("SerialNumber" .=) <$> _asSerialNumber,
            ("Country" .=) <$> _asCountry
          ]
      )
