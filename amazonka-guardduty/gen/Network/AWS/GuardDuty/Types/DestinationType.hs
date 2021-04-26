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
-- Module      : Network.AWS.GuardDuty.Types.DestinationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DestinationType
  ( DestinationType
      ( ..,
        DestinationTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DestinationType = DestinationType'
  { fromDestinationType ::
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

pattern DestinationTypeS3 :: DestinationType
pattern DestinationTypeS3 = DestinationType' "S3"

{-# COMPLETE
  DestinationTypeS3,
  DestinationType'
  #-}

instance Prelude.FromText DestinationType where
  parser = DestinationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DestinationType where
  toText (DestinationType' x) = x

instance Prelude.Hashable DestinationType

instance Prelude.NFData DestinationType

instance Prelude.ToByteString DestinationType

instance Prelude.ToQuery DestinationType

instance Prelude.ToHeader DestinationType

instance Prelude.ToJSON DestinationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DestinationType where
  parseJSON = Prelude.parseJSONText "DestinationType"
