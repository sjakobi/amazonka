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
-- Module      : Network.AWS.Lambda.Types.InvocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.InvocationType
  ( InvocationType
      ( ..,
        InvocationTypeDryRun,
        InvocationTypeEvent,
        InvocationTypeRequestResponse
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InvocationType = InvocationType'
  { fromInvocationType ::
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

pattern InvocationTypeDryRun :: InvocationType
pattern InvocationTypeDryRun = InvocationType' "DryRun"

pattern InvocationTypeEvent :: InvocationType
pattern InvocationTypeEvent = InvocationType' "Event"

pattern InvocationTypeRequestResponse :: InvocationType
pattern InvocationTypeRequestResponse = InvocationType' "RequestResponse"

{-# COMPLETE
  InvocationTypeDryRun,
  InvocationTypeEvent,
  InvocationTypeRequestResponse,
  InvocationType'
  #-}

instance Prelude.FromText InvocationType where
  parser = InvocationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InvocationType where
  toText (InvocationType' x) = x

instance Prelude.Hashable InvocationType

instance Prelude.NFData InvocationType

instance Prelude.ToByteString InvocationType

instance Prelude.ToQuery InvocationType

instance Prelude.ToHeader InvocationType

instance Prelude.ToJSON InvocationType where
  toJSON = Prelude.toJSONText
