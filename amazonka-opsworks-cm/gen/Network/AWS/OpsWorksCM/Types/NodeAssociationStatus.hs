{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorksCM.Types.NodeAssociationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.NodeAssociationStatus
  ( NodeAssociationStatus
      ( ..,
        NASFailed,
        NASInProgress,
        NASSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The status of the association or disassociation request.
--
--
-- __Possible values:__
--
--     * @SUCCESS@ : The association or disassociation succeeded.
--
--     * @FAILED@ : The association or disassociation failed.
--
--     * @IN_PROGRESS@ : The association or disassociation is still in progress.
data NodeAssociationStatus
  = NodeAssociationStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NASFailed :: NodeAssociationStatus
pattern NASFailed = NodeAssociationStatus' "FAILED"

pattern NASInProgress :: NodeAssociationStatus
pattern NASInProgress = NodeAssociationStatus' "IN_PROGRESS"

pattern NASSuccess :: NodeAssociationStatus
pattern NASSuccess = NodeAssociationStatus' "SUCCESS"

{-# COMPLETE
  NASFailed,
  NASInProgress,
  NASSuccess,
  NodeAssociationStatus'
  #-}

instance FromText NodeAssociationStatus where
  parser = (NodeAssociationStatus' . mk) <$> takeText

instance ToText NodeAssociationStatus where
  toText (NodeAssociationStatus' ci) = original ci

instance Hashable NodeAssociationStatus

instance NFData NodeAssociationStatus

instance ToByteString NodeAssociationStatus

instance ToQuery NodeAssociationStatus

instance ToHeader NodeAssociationStatus

instance FromJSON NodeAssociationStatus where
  parseJSON = parseJSONText "NodeAssociationStatus"
