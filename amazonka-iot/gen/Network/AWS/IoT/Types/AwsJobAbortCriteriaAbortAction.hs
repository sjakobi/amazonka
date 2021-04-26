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
-- Module      : Network.AWS.IoT.Types.AwsJobAbortCriteriaAbortAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AwsJobAbortCriteriaAbortAction
  ( AwsJobAbortCriteriaAbortAction
      ( ..,
        AwsJobAbortCriteriaAbortActionCANCEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AwsJobAbortCriteriaAbortAction = AwsJobAbortCriteriaAbortAction'
  { fromAwsJobAbortCriteriaAbortAction ::
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

pattern AwsJobAbortCriteriaAbortActionCANCEL :: AwsJobAbortCriteriaAbortAction
pattern AwsJobAbortCriteriaAbortActionCANCEL = AwsJobAbortCriteriaAbortAction' "CANCEL"

{-# COMPLETE
  AwsJobAbortCriteriaAbortActionCANCEL,
  AwsJobAbortCriteriaAbortAction'
  #-}

instance Prelude.FromText AwsJobAbortCriteriaAbortAction where
  parser = AwsJobAbortCriteriaAbortAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText AwsJobAbortCriteriaAbortAction where
  toText (AwsJobAbortCriteriaAbortAction' x) = x

instance Prelude.Hashable AwsJobAbortCriteriaAbortAction

instance Prelude.NFData AwsJobAbortCriteriaAbortAction

instance Prelude.ToByteString AwsJobAbortCriteriaAbortAction

instance Prelude.ToQuery AwsJobAbortCriteriaAbortAction

instance Prelude.ToHeader AwsJobAbortCriteriaAbortAction

instance Prelude.ToJSON AwsJobAbortCriteriaAbortAction where
  toJSON = Prelude.toJSONText
