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
-- Module      : Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExcessCapacityTerminationPolicy
  ( ExcessCapacityTerminationPolicy
      ( ..,
        ExcessCapacityTerminationPolicyDefault,
        ExcessCapacityTerminationPolicyNoTermination
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ExcessCapacityTerminationPolicy = ExcessCapacityTerminationPolicy'
  { fromExcessCapacityTerminationPolicy ::
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

pattern ExcessCapacityTerminationPolicyDefault :: ExcessCapacityTerminationPolicy
pattern ExcessCapacityTerminationPolicyDefault = ExcessCapacityTerminationPolicy' "default"

pattern ExcessCapacityTerminationPolicyNoTermination :: ExcessCapacityTerminationPolicy
pattern ExcessCapacityTerminationPolicyNoTermination = ExcessCapacityTerminationPolicy' "noTermination"

{-# COMPLETE
  ExcessCapacityTerminationPolicyDefault,
  ExcessCapacityTerminationPolicyNoTermination,
  ExcessCapacityTerminationPolicy'
  #-}

instance Prelude.FromText ExcessCapacityTerminationPolicy where
  parser = ExcessCapacityTerminationPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExcessCapacityTerminationPolicy where
  toText (ExcessCapacityTerminationPolicy' x) = x

instance Prelude.Hashable ExcessCapacityTerminationPolicy

instance Prelude.NFData ExcessCapacityTerminationPolicy

instance Prelude.ToByteString ExcessCapacityTerminationPolicy

instance Prelude.ToQuery ExcessCapacityTerminationPolicy

instance Prelude.ToHeader ExcessCapacityTerminationPolicy

instance Prelude.FromXML ExcessCapacityTerminationPolicy where
  parseXML = Prelude.parseXMLText "ExcessCapacityTerminationPolicy"
