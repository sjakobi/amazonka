{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.LifecycleRuleFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.LifecycleRuleFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.LifecycleRuleAndOperator
import Network.AWS.S3.Types.Tag

-- | The @Filter@ is used to identify objects that a Lifecycle Rule applies to. A @Filter@ must have exactly one of @Prefix@ , @Tag@ , or @And@ specified.
--
--
--
-- /See:/ 'lifecycleRuleFilter' smart constructor.
data LifecycleRuleFilter = LifecycleRuleFilter'
  { _lrfPrefix ::
      !(Maybe Text),
    _lrfAnd ::
      !( Maybe
           LifecycleRuleAndOperator
       ),
    _lrfTag :: !(Maybe Tag)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LifecycleRuleFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrfPrefix' - Prefix identifying one or more objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
--
-- * 'lrfAnd' - Undocumented member.
--
-- * 'lrfTag' - This tag must exist in the object's tag set in order for the rule to apply.
lifecycleRuleFilter ::
  LifecycleRuleFilter
lifecycleRuleFilter =
  LifecycleRuleFilter'
    { _lrfPrefix = Nothing,
      _lrfAnd = Nothing,
      _lrfTag = Nothing
    }

-- | Prefix identifying one or more objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
lrfPrefix :: Lens' LifecycleRuleFilter (Maybe Text)
lrfPrefix = lens _lrfPrefix (\s a -> s {_lrfPrefix = a})

-- | Undocumented member.
lrfAnd :: Lens' LifecycleRuleFilter (Maybe LifecycleRuleAndOperator)
lrfAnd = lens _lrfAnd (\s a -> s {_lrfAnd = a})

-- | This tag must exist in the object's tag set in order for the rule to apply.
lrfTag :: Lens' LifecycleRuleFilter (Maybe Tag)
lrfTag = lens _lrfTag (\s a -> s {_lrfTag = a})

instance FromXML LifecycleRuleFilter where
  parseXML x =
    LifecycleRuleFilter'
      <$> (x .@? "Prefix") <*> (x .@? "And") <*> (x .@? "Tag")

instance Hashable LifecycleRuleFilter

instance NFData LifecycleRuleFilter

instance ToXML LifecycleRuleFilter where
  toXML LifecycleRuleFilter' {..} =
    mconcat
      [ "Prefix" @= _lrfPrefix,
        "And" @= _lrfAnd,
        "Tag" @= _lrfTag
      ]
