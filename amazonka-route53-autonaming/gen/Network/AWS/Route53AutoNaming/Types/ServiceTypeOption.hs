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
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceTypeOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceTypeOption
  ( ServiceTypeOption
      ( ..,
        ServiceTypeOptionHTTP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceTypeOption = ServiceTypeOption'
  { fromServiceTypeOption ::
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

pattern ServiceTypeOptionHTTP :: ServiceTypeOption
pattern ServiceTypeOptionHTTP = ServiceTypeOption' "HTTP"

{-# COMPLETE
  ServiceTypeOptionHTTP,
  ServiceTypeOption'
  #-}

instance Prelude.FromText ServiceTypeOption where
  parser = ServiceTypeOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceTypeOption where
  toText (ServiceTypeOption' x) = x

instance Prelude.Hashable ServiceTypeOption

instance Prelude.NFData ServiceTypeOption

instance Prelude.ToByteString ServiceTypeOption

instance Prelude.ToQuery ServiceTypeOption

instance Prelude.ToHeader ServiceTypeOption

instance Prelude.ToJSON ServiceTypeOption where
  toJSON = Prelude.toJSONText
