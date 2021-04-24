{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.Trust
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.Trust where

import Network.AWS.DirectoryService.Types.SelectiveAuth
import Network.AWS.DirectoryService.Types.TrustDirection
import Network.AWS.DirectoryService.Types.TrustState
import Network.AWS.DirectoryService.Types.TrustType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a trust relationship between an AWS Managed Microsoft AD directory and an external domain.
--
--
--
-- /See:/ 'trust' smart constructor.
data Trust = Trust'
  { _tTrustType ::
      !(Maybe TrustType),
    _tCreatedDateTime :: !(Maybe POSIX),
    _tTrustId :: !(Maybe Text),
    _tTrustDirection :: !(Maybe TrustDirection),
    _tStateLastUpdatedDateTime :: !(Maybe POSIX),
    _tLastUpdatedDateTime :: !(Maybe POSIX),
    _tTrustState :: !(Maybe TrustState),
    _tSelectiveAuth :: !(Maybe SelectiveAuth),
    _tTrustStateReason :: !(Maybe Text),
    _tDirectoryId :: !(Maybe Text),
    _tRemoteDomainName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Trust' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTrustType' - The trust relationship type. @Forest@ is the default.
--
-- * 'tCreatedDateTime' - The date and time that the trust relationship was created.
--
-- * 'tTrustId' - The unique ID of the trust relationship.
--
-- * 'tTrustDirection' - The trust relationship direction.
--
-- * 'tStateLastUpdatedDateTime' - The date and time that the TrustState was last updated.
--
-- * 'tLastUpdatedDateTime' - The date and time that the trust relationship was last updated.
--
-- * 'tTrustState' - The trust relationship state.
--
-- * 'tSelectiveAuth' - Current state of selective authentication for the trust.
--
-- * 'tTrustStateReason' - The reason for the TrustState.
--
-- * 'tDirectoryId' - The Directory ID of the AWS directory involved in the trust relationship.
--
-- * 'tRemoteDomainName' - The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.
trust ::
  Trust
trust =
  Trust'
    { _tTrustType = Nothing,
      _tCreatedDateTime = Nothing,
      _tTrustId = Nothing,
      _tTrustDirection = Nothing,
      _tStateLastUpdatedDateTime = Nothing,
      _tLastUpdatedDateTime = Nothing,
      _tTrustState = Nothing,
      _tSelectiveAuth = Nothing,
      _tTrustStateReason = Nothing,
      _tDirectoryId = Nothing,
      _tRemoteDomainName = Nothing
    }

-- | The trust relationship type. @Forest@ is the default.
tTrustType :: Lens' Trust (Maybe TrustType)
tTrustType = lens _tTrustType (\s a -> s {_tTrustType = a})

-- | The date and time that the trust relationship was created.
tCreatedDateTime :: Lens' Trust (Maybe UTCTime)
tCreatedDateTime = lens _tCreatedDateTime (\s a -> s {_tCreatedDateTime = a}) . mapping _Time

-- | The unique ID of the trust relationship.
tTrustId :: Lens' Trust (Maybe Text)
tTrustId = lens _tTrustId (\s a -> s {_tTrustId = a})

-- | The trust relationship direction.
tTrustDirection :: Lens' Trust (Maybe TrustDirection)
tTrustDirection = lens _tTrustDirection (\s a -> s {_tTrustDirection = a})

-- | The date and time that the TrustState was last updated.
tStateLastUpdatedDateTime :: Lens' Trust (Maybe UTCTime)
tStateLastUpdatedDateTime = lens _tStateLastUpdatedDateTime (\s a -> s {_tStateLastUpdatedDateTime = a}) . mapping _Time

-- | The date and time that the trust relationship was last updated.
tLastUpdatedDateTime :: Lens' Trust (Maybe UTCTime)
tLastUpdatedDateTime = lens _tLastUpdatedDateTime (\s a -> s {_tLastUpdatedDateTime = a}) . mapping _Time

-- | The trust relationship state.
tTrustState :: Lens' Trust (Maybe TrustState)
tTrustState = lens _tTrustState (\s a -> s {_tTrustState = a})

-- | Current state of selective authentication for the trust.
tSelectiveAuth :: Lens' Trust (Maybe SelectiveAuth)
tSelectiveAuth = lens _tSelectiveAuth (\s a -> s {_tSelectiveAuth = a})

-- | The reason for the TrustState.
tTrustStateReason :: Lens' Trust (Maybe Text)
tTrustStateReason = lens _tTrustStateReason (\s a -> s {_tTrustStateReason = a})

-- | The Directory ID of the AWS directory involved in the trust relationship.
tDirectoryId :: Lens' Trust (Maybe Text)
tDirectoryId = lens _tDirectoryId (\s a -> s {_tDirectoryId = a})

-- | The Fully Qualified Domain Name (FQDN) of the external domain involved in the trust relationship.
tRemoteDomainName :: Lens' Trust (Maybe Text)
tRemoteDomainName = lens _tRemoteDomainName (\s a -> s {_tRemoteDomainName = a})

instance FromJSON Trust where
  parseJSON =
    withObject
      "Trust"
      ( \x ->
          Trust'
            <$> (x .:? "TrustType")
            <*> (x .:? "CreatedDateTime")
            <*> (x .:? "TrustId")
            <*> (x .:? "TrustDirection")
            <*> (x .:? "StateLastUpdatedDateTime")
            <*> (x .:? "LastUpdatedDateTime")
            <*> (x .:? "TrustState")
            <*> (x .:? "SelectiveAuth")
            <*> (x .:? "TrustStateReason")
            <*> (x .:? "DirectoryId")
            <*> (x .:? "RemoteDomainName")
      )

instance Hashable Trust

instance NFData Trust
