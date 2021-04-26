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
-- Module      : Network.AWS.APIGateway.Types.DomainNameStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.DomainNameStatus
  ( DomainNameStatus
      ( ..,
        DomainNameStatusAVAILABLE,
        DomainNameStatusPENDING,
        DomainNameStatusUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainNameStatus = DomainNameStatus'
  { fromDomainNameStatus ::
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

pattern DomainNameStatusAVAILABLE :: DomainNameStatus
pattern DomainNameStatusAVAILABLE = DomainNameStatus' "AVAILABLE"

pattern DomainNameStatusPENDING :: DomainNameStatus
pattern DomainNameStatusPENDING = DomainNameStatus' "PENDING"

pattern DomainNameStatusUPDATING :: DomainNameStatus
pattern DomainNameStatusUPDATING = DomainNameStatus' "UPDATING"

{-# COMPLETE
  DomainNameStatusAVAILABLE,
  DomainNameStatusPENDING,
  DomainNameStatusUPDATING,
  DomainNameStatus'
  #-}

instance Prelude.FromText DomainNameStatus where
  parser = DomainNameStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainNameStatus where
  toText (DomainNameStatus' x) = x

instance Prelude.Hashable DomainNameStatus

instance Prelude.NFData DomainNameStatus

instance Prelude.ToByteString DomainNameStatus

instance Prelude.ToQuery DomainNameStatus

instance Prelude.ToHeader DomainNameStatus

instance Prelude.FromJSON DomainNameStatus where
  parseJSON = Prelude.parseJSONText "DomainNameStatus"
