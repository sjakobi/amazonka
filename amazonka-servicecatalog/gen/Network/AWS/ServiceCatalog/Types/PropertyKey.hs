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
-- Module      : Network.AWS.ServiceCatalog.Types.PropertyKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PropertyKey
  ( PropertyKey
      ( ..,
        PropertyKeyLAUNCHROLE,
        PropertyKeyOWNER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PropertyKey = PropertyKey'
  { fromPropertyKey ::
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

pattern PropertyKeyLAUNCHROLE :: PropertyKey
pattern PropertyKeyLAUNCHROLE = PropertyKey' "LAUNCH_ROLE"

pattern PropertyKeyOWNER :: PropertyKey
pattern PropertyKeyOWNER = PropertyKey' "OWNER"

{-# COMPLETE
  PropertyKeyLAUNCHROLE,
  PropertyKeyOWNER,
  PropertyKey'
  #-}

instance Prelude.FromText PropertyKey where
  parser = PropertyKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText PropertyKey where
  toText (PropertyKey' x) = x

instance Prelude.Hashable PropertyKey

instance Prelude.NFData PropertyKey

instance Prelude.ToByteString PropertyKey

instance Prelude.ToQuery PropertyKey

instance Prelude.ToHeader PropertyKey

instance Prelude.ToJSON PropertyKey where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PropertyKey where
  parseJSON = Prelude.parseJSONText "PropertyKey"
