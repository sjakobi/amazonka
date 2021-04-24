{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ReplicationRuleFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ReplicationRuleFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ReplicationRuleAndOperator
import Network.AWS.S3.Types.Tag

-- | A filter that identifies the subset of objects to which the replication rule applies. A @Filter@ must specify exactly one @Prefix@ , @Tag@ , or an @And@ child element.
--
--
--
-- /See:/ 'replicationRuleFilter' smart constructor.
data ReplicationRuleFilter = ReplicationRuleFilter'
  { _rrfPrefix ::
      !(Maybe Text),
    _rrfAnd ::
      !( Maybe
           ReplicationRuleAndOperator
       ),
    _rrfTag :: !(Maybe Tag)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReplicationRuleFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrfPrefix' - An object key name prefix that identifies the subset of objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
--
-- * 'rrfAnd' - A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:      * If you specify both a @Prefix@ and a @Tag@ filter, wrap these filters in an @And@ tag.     * If you specify a filter based on multiple tags, wrap the @Tag@ elements in an @And@ tag.
--
-- * 'rrfTag' - A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set.
replicationRuleFilter ::
  ReplicationRuleFilter
replicationRuleFilter =
  ReplicationRuleFilter'
    { _rrfPrefix = Nothing,
      _rrfAnd = Nothing,
      _rrfTag = Nothing
    }

-- | An object key name prefix that identifies the subset of objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
rrfPrefix :: Lens' ReplicationRuleFilter (Maybe Text)
rrfPrefix = lens _rrfPrefix (\s a -> s {_rrfPrefix = a})

-- | A container for specifying rule filters. The filters determine the subset of objects to which the rule applies. This element is required only if you specify more than one filter. For example:      * If you specify both a @Prefix@ and a @Tag@ filter, wrap these filters in an @And@ tag.     * If you specify a filter based on multiple tags, wrap the @Tag@ elements in an @And@ tag.
rrfAnd :: Lens' ReplicationRuleFilter (Maybe ReplicationRuleAndOperator)
rrfAnd = lens _rrfAnd (\s a -> s {_rrfAnd = a})

-- | A container for specifying a tag key and value.  The rule applies only to objects that have the tag in their tag set.
rrfTag :: Lens' ReplicationRuleFilter (Maybe Tag)
rrfTag = lens _rrfTag (\s a -> s {_rrfTag = a})

instance FromXML ReplicationRuleFilter where
  parseXML x =
    ReplicationRuleFilter'
      <$> (x .@? "Prefix") <*> (x .@? "And") <*> (x .@? "Tag")

instance Hashable ReplicationRuleFilter

instance NFData ReplicationRuleFilter

instance ToXML ReplicationRuleFilter where
  toXML ReplicationRuleFilter' {..} =
    mconcat
      [ "Prefix" @= _rrfPrefix,
        "And" @= _rrfAnd,
        "Tag" @= _rrfTag
      ]
