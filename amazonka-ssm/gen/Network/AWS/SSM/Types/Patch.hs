{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.Patch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.Patch where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents metadata about a patch.
--
--
--
-- /See:/ 'patch' smart constructor.
data Patch = Patch'
  { _pMsrcSeverity :: !(Maybe Text),
    _pVendor :: !(Maybe Text),
    _pEpoch :: !(Maybe Int),
    _pProduct :: !(Maybe Text),
    _pSeverity :: !(Maybe Text),
    _pTitle :: !(Maybe Text),
    _pId :: !(Maybe Text),
    _pProductFamily :: !(Maybe Text),
    _pVersion :: !(Maybe Text),
    _pRepository :: !(Maybe Text),
    _pName :: !(Maybe Text),
    _pBugzillaIds :: !(Maybe [Text]),
    _pMsrcNumber :: !(Maybe Text),
    _pRelease :: !(Maybe Text),
    _pCVEIds :: !(Maybe [Text]),
    _pClassification :: !(Maybe Text),
    _pDescription :: !(Maybe Text),
    _pAdvisoryIds :: !(Maybe [Text]),
    _pArch :: !(Maybe Text),
    _pReleaseDate :: !(Maybe POSIX),
    _pLanguage :: !(Maybe Text),
    _pKbNumber :: !(Maybe Text),
    _pContentURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Patch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pMsrcSeverity' - The severity of the patch, such as @Critical@ , @Important@ , or @Moderate@ . Applies to Windows patches only.
--
-- * 'pVendor' - The name of the vendor providing the patch.
--
-- * 'pEpoch' - The epoch of the patch. For example in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the epoch value is @20180914-2@ . Applies to Linux-based instances only.
--
-- * 'pProduct' - The specific product the patch is applicable for. For example, @WindowsServer2016@ or @AmazonLinux2018.03@ .
--
-- * 'pSeverity' - The severity level of the patch. For example, @CRITICAL@ or @MODERATE@ .
--
-- * 'pTitle' - The title of the patch.
--
-- * 'pId' - The ID of the patch. Applies to Windows patches only.
--
-- * 'pProductFamily' - The product family the patch is applicable for. For example, @Windows@ or @Amazon Linux 2@ .
--
-- * 'pVersion' - The version number of the patch. For example, in @example-pkg-1.710.10-2.7.abcd.x86_64@ , the version number is indicated by @-1@ . Applies to Linux-based instances only.
--
-- * 'pRepository' - The source patch repository for the operating system and version, such as @trusty-security@ for Ubuntu Server 14.04 LTE and @focal-security@ for Ubuntu Server 20.04 LTE. Applies to Linux-based instances only.
--
-- * 'pName' - The name of the patch. Applies to Linux-based instances only.
--
-- * 'pBugzillaIds' - The Bugzilla ID of the patch. For example, @1600646@ . Applies to Linux-based instances only.
--
-- * 'pMsrcNumber' - The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to. For example, @MS14-045@ . Applies to Windows patches only.
--
-- * 'pRelease' - The particular release of a patch. For example, in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the release is @2.amaz1@ . Applies to Linux-based instances only.
--
-- * 'pCVEIds' - The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example, @CVE-2011-3192@ . Applies to Linux-based instances only.
--
-- * 'pClassification' - The classification of the patch. For example, @SecurityUpdates@ , @Updates@ , or @CriticalUpdates@ .
--
-- * 'pDescription' - The description of the patch.
--
-- * 'pAdvisoryIds' - The Advisory ID of the patch. For example, @RHSA-2020:3779@ . Applies to Linux-based instances only.
--
-- * 'pArch' - The architecture of the patch. For example, in @example-pkg-0.710.10-2.7.abcd.x86_64@ , the architecture is indicated by @x86_64@ . Applies to Linux-based instances only.
--
-- * 'pReleaseDate' - The date the patch was released.
--
-- * 'pLanguage' - The language of the patch if it's language-specific.
--
-- * 'pKbNumber' - The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.
--
-- * 'pContentURL' - The URL where more information can be obtained about the patch.
patch ::
  Patch
patch =
  Patch'
    { _pMsrcSeverity = Nothing,
      _pVendor = Nothing,
      _pEpoch = Nothing,
      _pProduct = Nothing,
      _pSeverity = Nothing,
      _pTitle = Nothing,
      _pId = Nothing,
      _pProductFamily = Nothing,
      _pVersion = Nothing,
      _pRepository = Nothing,
      _pName = Nothing,
      _pBugzillaIds = Nothing,
      _pMsrcNumber = Nothing,
      _pRelease = Nothing,
      _pCVEIds = Nothing,
      _pClassification = Nothing,
      _pDescription = Nothing,
      _pAdvisoryIds = Nothing,
      _pArch = Nothing,
      _pReleaseDate = Nothing,
      _pLanguage = Nothing,
      _pKbNumber = Nothing,
      _pContentURL = Nothing
    }

-- | The severity of the patch, such as @Critical@ , @Important@ , or @Moderate@ . Applies to Windows patches only.
pMsrcSeverity :: Lens' Patch (Maybe Text)
pMsrcSeverity = lens _pMsrcSeverity (\s a -> s {_pMsrcSeverity = a})

-- | The name of the vendor providing the patch.
pVendor :: Lens' Patch (Maybe Text)
pVendor = lens _pVendor (\s a -> s {_pVendor = a})

-- | The epoch of the patch. For example in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the epoch value is @20180914-2@ . Applies to Linux-based instances only.
pEpoch :: Lens' Patch (Maybe Int)
pEpoch = lens _pEpoch (\s a -> s {_pEpoch = a})

-- | The specific product the patch is applicable for. For example, @WindowsServer2016@ or @AmazonLinux2018.03@ .
pProduct :: Lens' Patch (Maybe Text)
pProduct = lens _pProduct (\s a -> s {_pProduct = a})

-- | The severity level of the patch. For example, @CRITICAL@ or @MODERATE@ .
pSeverity :: Lens' Patch (Maybe Text)
pSeverity = lens _pSeverity (\s a -> s {_pSeverity = a})

-- | The title of the patch.
pTitle :: Lens' Patch (Maybe Text)
pTitle = lens _pTitle (\s a -> s {_pTitle = a})

-- | The ID of the patch. Applies to Windows patches only.
pId :: Lens' Patch (Maybe Text)
pId = lens _pId (\s a -> s {_pId = a})

-- | The product family the patch is applicable for. For example, @Windows@ or @Amazon Linux 2@ .
pProductFamily :: Lens' Patch (Maybe Text)
pProductFamily = lens _pProductFamily (\s a -> s {_pProductFamily = a})

-- | The version number of the patch. For example, in @example-pkg-1.710.10-2.7.abcd.x86_64@ , the version number is indicated by @-1@ . Applies to Linux-based instances only.
pVersion :: Lens' Patch (Maybe Text)
pVersion = lens _pVersion (\s a -> s {_pVersion = a})

-- | The source patch repository for the operating system and version, such as @trusty-security@ for Ubuntu Server 14.04 LTE and @focal-security@ for Ubuntu Server 20.04 LTE. Applies to Linux-based instances only.
pRepository :: Lens' Patch (Maybe Text)
pRepository = lens _pRepository (\s a -> s {_pRepository = a})

-- | The name of the patch. Applies to Linux-based instances only.
pName :: Lens' Patch (Maybe Text)
pName = lens _pName (\s a -> s {_pName = a})

-- | The Bugzilla ID of the patch. For example, @1600646@ . Applies to Linux-based instances only.
pBugzillaIds :: Lens' Patch [Text]
pBugzillaIds = lens _pBugzillaIds (\s a -> s {_pBugzillaIds = a}) . _Default . _Coerce

-- | The ID of the Microsoft Security Response Center (MSRC) bulletin the patch is related to. For example, @MS14-045@ . Applies to Windows patches only.
pMsrcNumber :: Lens' Patch (Maybe Text)
pMsrcNumber = lens _pMsrcNumber (\s a -> s {_pMsrcNumber = a})

-- | The particular release of a patch. For example, in @pkg-example-EE-20180914-2.2.amzn1.noarch@ , the release is @2.amaz1@ . Applies to Linux-based instances only.
pRelease :: Lens' Patch (Maybe Text)
pRelease = lens _pRelease (\s a -> s {_pRelease = a})

-- | The Common Vulnerabilities and Exposures (CVE) ID of the patch. For example, @CVE-2011-3192@ . Applies to Linux-based instances only.
pCVEIds :: Lens' Patch [Text]
pCVEIds = lens _pCVEIds (\s a -> s {_pCVEIds = a}) . _Default . _Coerce

-- | The classification of the patch. For example, @SecurityUpdates@ , @Updates@ , or @CriticalUpdates@ .
pClassification :: Lens' Patch (Maybe Text)
pClassification = lens _pClassification (\s a -> s {_pClassification = a})

-- | The description of the patch.
pDescription :: Lens' Patch (Maybe Text)
pDescription = lens _pDescription (\s a -> s {_pDescription = a})

-- | The Advisory ID of the patch. For example, @RHSA-2020:3779@ . Applies to Linux-based instances only.
pAdvisoryIds :: Lens' Patch [Text]
pAdvisoryIds = lens _pAdvisoryIds (\s a -> s {_pAdvisoryIds = a}) . _Default . _Coerce

-- | The architecture of the patch. For example, in @example-pkg-0.710.10-2.7.abcd.x86_64@ , the architecture is indicated by @x86_64@ . Applies to Linux-based instances only.
pArch :: Lens' Patch (Maybe Text)
pArch = lens _pArch (\s a -> s {_pArch = a})

-- | The date the patch was released.
pReleaseDate :: Lens' Patch (Maybe UTCTime)
pReleaseDate = lens _pReleaseDate (\s a -> s {_pReleaseDate = a}) . mapping _Time

-- | The language of the patch if it's language-specific.
pLanguage :: Lens' Patch (Maybe Text)
pLanguage = lens _pLanguage (\s a -> s {_pLanguage = a})

-- | The Microsoft Knowledge Base ID of the patch. Applies to Windows patches only.
pKbNumber :: Lens' Patch (Maybe Text)
pKbNumber = lens _pKbNumber (\s a -> s {_pKbNumber = a})

-- | The URL where more information can be obtained about the patch.
pContentURL :: Lens' Patch (Maybe Text)
pContentURL = lens _pContentURL (\s a -> s {_pContentURL = a})

instance FromJSON Patch where
  parseJSON =
    withObject
      "Patch"
      ( \x ->
          Patch'
            <$> (x .:? "MsrcSeverity")
            <*> (x .:? "Vendor")
            <*> (x .:? "Epoch")
            <*> (x .:? "Product")
            <*> (x .:? "Severity")
            <*> (x .:? "Title")
            <*> (x .:? "Id")
            <*> (x .:? "ProductFamily")
            <*> (x .:? "Version")
            <*> (x .:? "Repository")
            <*> (x .:? "Name")
            <*> (x .:? "BugzillaIds" .!= mempty)
            <*> (x .:? "MsrcNumber")
            <*> (x .:? "Release")
            <*> (x .:? "CVEIds" .!= mempty)
            <*> (x .:? "Classification")
            <*> (x .:? "Description")
            <*> (x .:? "AdvisoryIds" .!= mempty)
            <*> (x .:? "Arch")
            <*> (x .:? "ReleaseDate")
            <*> (x .:? "Language")
            <*> (x .:? "KbNumber")
            <*> (x .:? "ContentUrl")
      )

instance Hashable Patch

instance NFData Patch
