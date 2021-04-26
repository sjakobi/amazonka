{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DomainStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DomainStatusType
  ( DomainStatusType
      ( ..,
        DomainStatusTypeACTIVE,
        DomainStatusTypeCREATING,
        DomainStatusTypeDELETING,
        DomainStatusTypeFAILED,
        DomainStatusTypeUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainStatusType = DomainStatusType'
  { fromDomainStatusType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DomainStatusTypeACTIVE :: DomainStatusType
pattern DomainStatusTypeACTIVE = DomainStatusType' "ACTIVE"

pattern DomainStatusTypeCREATING :: DomainStatusType
pattern DomainStatusTypeCREATING = DomainStatusType' "CREATING"

pattern DomainStatusTypeDELETING :: DomainStatusType
pattern DomainStatusTypeDELETING = DomainStatusType' "DELETING"

pattern DomainStatusTypeFAILED :: DomainStatusType
pattern DomainStatusTypeFAILED = DomainStatusType' "FAILED"

pattern DomainStatusTypeUPDATING :: DomainStatusType
pattern DomainStatusTypeUPDATING = DomainStatusType' "UPDATING"

{-# COMPLETE
  DomainStatusTypeACTIVE,
  DomainStatusTypeCREATING,
  DomainStatusTypeDELETING,
  DomainStatusTypeFAILED,
  DomainStatusTypeUPDATING,
  DomainStatusType'
  #-}

instance Prelude.FromText DomainStatusType where
  parser = DomainStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainStatusType where
  toText (DomainStatusType' x) = x

instance Prelude.Hashable DomainStatusType

instance Prelude.NFData DomainStatusType

instance Prelude.ToByteString DomainStatusType

instance Prelude.ToQuery DomainStatusType

instance Prelude.ToHeader DomainStatusType

instance Prelude.FromJSON DomainStatusType where
  parseJSON = Prelude.parseJSONText "DomainStatusType"
