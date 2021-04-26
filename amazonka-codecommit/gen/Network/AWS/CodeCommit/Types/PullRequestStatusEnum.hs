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
-- Module      : Network.AWS.CodeCommit.Types.PullRequestStatusEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.PullRequestStatusEnum
  ( PullRequestStatusEnum
      ( ..,
        PullRequestStatusEnumCLOSED,
        PullRequestStatusEnumOPEN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PullRequestStatusEnum = PullRequestStatusEnum'
  { fromPullRequestStatusEnum ::
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

pattern PullRequestStatusEnumCLOSED :: PullRequestStatusEnum
pattern PullRequestStatusEnumCLOSED = PullRequestStatusEnum' "CLOSED"

pattern PullRequestStatusEnumOPEN :: PullRequestStatusEnum
pattern PullRequestStatusEnumOPEN = PullRequestStatusEnum' "OPEN"

{-# COMPLETE
  PullRequestStatusEnumCLOSED,
  PullRequestStatusEnumOPEN,
  PullRequestStatusEnum'
  #-}

instance Prelude.FromText PullRequestStatusEnum where
  parser = PullRequestStatusEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText PullRequestStatusEnum where
  toText (PullRequestStatusEnum' x) = x

instance Prelude.Hashable PullRequestStatusEnum

instance Prelude.NFData PullRequestStatusEnum

instance Prelude.ToByteString PullRequestStatusEnum

instance Prelude.ToQuery PullRequestStatusEnum

instance Prelude.ToHeader PullRequestStatusEnum

instance Prelude.ToJSON PullRequestStatusEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PullRequestStatusEnum where
  parseJSON = Prelude.parseJSONText "PullRequestStatusEnum"
