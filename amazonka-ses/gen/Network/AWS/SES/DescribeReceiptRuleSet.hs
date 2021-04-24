{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.DescribeReceiptRuleSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the specified receipt rule set.
--
--
-- For information about managing receipt rule sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html Amazon SES Developer Guide> .
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DescribeReceiptRuleSet
  ( -- * Creating a Request
    describeReceiptRuleSet,
    DescribeReceiptRuleSet,

    -- * Request Lenses
    desRuleSetName,

    -- * Destructuring the Response
    describeReceiptRuleSetResponse,
    DescribeReceiptRuleSetResponse,

    -- * Response Lenses
    drrsrrsRules,
    drrsrrsMetadata,
    drrsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'describeReceiptRuleSet' smart constructor.
newtype DescribeReceiptRuleSet = DescribeReceiptRuleSet'
  { _desRuleSetName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReceiptRuleSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desRuleSetName' - The name of the receipt rule set to describe.
describeReceiptRuleSet ::
  -- | 'desRuleSetName'
  Text ->
  DescribeReceiptRuleSet
describeReceiptRuleSet pRuleSetName_ =
  DescribeReceiptRuleSet'
    { _desRuleSetName =
        pRuleSetName_
    }

-- | The name of the receipt rule set to describe.
desRuleSetName :: Lens' DescribeReceiptRuleSet Text
desRuleSetName = lens _desRuleSetName (\s a -> s {_desRuleSetName = a})

instance AWSRequest DescribeReceiptRuleSet where
  type
    Rs DescribeReceiptRuleSet =
      DescribeReceiptRuleSetResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "DescribeReceiptRuleSetResult"
      ( \s h x ->
          DescribeReceiptRuleSetResponse'
            <$> ( x .@? "Rules" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Metadata")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReceiptRuleSet

instance NFData DescribeReceiptRuleSet

instance ToHeaders DescribeReceiptRuleSet where
  toHeaders = const mempty

instance ToPath DescribeReceiptRuleSet where
  toPath = const "/"

instance ToQuery DescribeReceiptRuleSet where
  toQuery DescribeReceiptRuleSet' {..} =
    mconcat
      [ "Action"
          =: ("DescribeReceiptRuleSet" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "RuleSetName" =: _desRuleSetName
      ]

-- | Represents the details of the specified receipt rule set.
--
--
--
-- /See:/ 'describeReceiptRuleSetResponse' smart constructor.
data DescribeReceiptRuleSetResponse = DescribeReceiptRuleSetResponse'
  { _drrsrrsRules ::
      !( Maybe
           [ReceiptRule]
       ),
    _drrsrrsMetadata ::
      !( Maybe
           ReceiptRuleSetMetadata
       ),
    _drrsrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReceiptRuleSetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrsrrsRules' - A list of the receipt rules that belong to the specified receipt rule set.
--
-- * 'drrsrrsMetadata' - The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.
--
-- * 'drrsrrsResponseStatus' - -- | The response status code.
describeReceiptRuleSetResponse ::
  -- | 'drrsrrsResponseStatus'
  Int ->
  DescribeReceiptRuleSetResponse
describeReceiptRuleSetResponse pResponseStatus_ =
  DescribeReceiptRuleSetResponse'
    { _drrsrrsRules =
        Nothing,
      _drrsrrsMetadata = Nothing,
      _drrsrrsResponseStatus = pResponseStatus_
    }

-- | A list of the receipt rules that belong to the specified receipt rule set.
drrsrrsRules :: Lens' DescribeReceiptRuleSetResponse [ReceiptRule]
drrsrrsRules = lens _drrsrrsRules (\s a -> s {_drrsrrsRules = a}) . _Default . _Coerce

-- | The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.
drrsrrsMetadata :: Lens' DescribeReceiptRuleSetResponse (Maybe ReceiptRuleSetMetadata)
drrsrrsMetadata = lens _drrsrrsMetadata (\s a -> s {_drrsrrsMetadata = a})

-- | -- | The response status code.
drrsrrsResponseStatus :: Lens' DescribeReceiptRuleSetResponse Int
drrsrrsResponseStatus = lens _drrsrrsResponseStatus (\s a -> s {_drrsrrsResponseStatus = a})

instance NFData DescribeReceiptRuleSetResponse
