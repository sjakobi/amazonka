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
-- Module      : Network.AWS.Connect.Types.IntegrationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.IntegrationType
  ( IntegrationType
      ( ..,
        IntegrationTypeEVENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IntegrationType = IntegrationType'
  { fromIntegrationType ::
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

pattern IntegrationTypeEVENT :: IntegrationType
pattern IntegrationTypeEVENT = IntegrationType' "EVENT"

{-# COMPLETE
  IntegrationTypeEVENT,
  IntegrationType'
  #-}

instance Prelude.FromText IntegrationType where
  parser = IntegrationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IntegrationType where
  toText (IntegrationType' x) = x

instance Prelude.Hashable IntegrationType

instance Prelude.NFData IntegrationType

instance Prelude.ToByteString IntegrationType

instance Prelude.ToQuery IntegrationType

instance Prelude.ToHeader IntegrationType

instance Prelude.ToJSON IntegrationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IntegrationType where
  parseJSON = Prelude.parseJSONText "IntegrationType"
