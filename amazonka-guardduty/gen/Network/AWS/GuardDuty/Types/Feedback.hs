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
-- Module      : Network.AWS.GuardDuty.Types.Feedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.Feedback
  ( Feedback
      ( ..,
        FeedbackNOTUSEFUL,
        FeedbackUSEFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Feedback = Feedback'
  { fromFeedback ::
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

pattern FeedbackNOTUSEFUL :: Feedback
pattern FeedbackNOTUSEFUL = Feedback' "NOT_USEFUL"

pattern FeedbackUSEFUL :: Feedback
pattern FeedbackUSEFUL = Feedback' "USEFUL"

{-# COMPLETE
  FeedbackNOTUSEFUL,
  FeedbackUSEFUL,
  Feedback'
  #-}

instance Prelude.FromText Feedback where
  parser = Feedback' Prelude.<$> Prelude.takeText

instance Prelude.ToText Feedback where
  toText (Feedback' x) = x

instance Prelude.Hashable Feedback

instance Prelude.NFData Feedback

instance Prelude.ToByteString Feedback

instance Prelude.ToQuery Feedback

instance Prelude.ToHeader Feedback

instance Prelude.ToJSON Feedback where
  toJSON = Prelude.toJSONText
