{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.IAMInstanceProfileAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.IAMInstanceProfileAssociationState
  ( IAMInstanceProfileAssociationState
      ( ..,
        IAPASAssociated,
        IAPASAssociating,
        IAPASDisassociated,
        IAPASDisassociating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data IAMInstanceProfileAssociationState
  = IAMInstanceProfileAssociationState'
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

pattern IAPASAssociated :: IAMInstanceProfileAssociationState
pattern IAPASAssociated = IAMInstanceProfileAssociationState' "associated"

pattern IAPASAssociating :: IAMInstanceProfileAssociationState
pattern IAPASAssociating = IAMInstanceProfileAssociationState' "associating"

pattern IAPASDisassociated :: IAMInstanceProfileAssociationState
pattern IAPASDisassociated = IAMInstanceProfileAssociationState' "disassociated"

pattern IAPASDisassociating :: IAMInstanceProfileAssociationState
pattern IAPASDisassociating = IAMInstanceProfileAssociationState' "disassociating"

{-# COMPLETE
  IAPASAssociated,
  IAPASAssociating,
  IAPASDisassociated,
  IAPASDisassociating,
  IAMInstanceProfileAssociationState'
  #-}

instance FromText IAMInstanceProfileAssociationState where
  parser = (IAMInstanceProfileAssociationState' . mk) <$> takeText

instance ToText IAMInstanceProfileAssociationState where
  toText (IAMInstanceProfileAssociationState' ci) = original ci

instance Hashable IAMInstanceProfileAssociationState

instance NFData IAMInstanceProfileAssociationState

instance ToByteString IAMInstanceProfileAssociationState

instance ToQuery IAMInstanceProfileAssociationState

instance ToHeader IAMInstanceProfileAssociationState

instance FromXML IAMInstanceProfileAssociationState where
  parseXML = parseXMLText "IAMInstanceProfileAssociationState"
