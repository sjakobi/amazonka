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
-- Module      : Network.AWS.CloudFormation.EstimateTemplateCost
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
module Network.AWS.CloudFormation.EstimateTemplateCost
  ( -- * Creating a Request
    estimateTemplateCost,
    EstimateTemplateCost,

    -- * Request Lenses
    etcTemplateURL,
    etcTemplateBody,
    etcParameters,

    -- * Destructuring the Response
    estimateTemplateCostResponse,
    EstimateTemplateCostResponse,

    -- * Response Lenses
    etcrrsURL,
    etcrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for an 'EstimateTemplateCost' action.
--
--
--
-- /See:/ 'estimateTemplateCost' smart constructor.
data EstimateTemplateCost = EstimateTemplateCost'
  { _etcTemplateURL ::
      !(Maybe Text),
    _etcTemplateBody ::
      !(Maybe Text),
    _etcParameters ::
      !(Maybe [Parameter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EstimateTemplateCost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etcTemplateURL' - Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
--
-- * 'etcTemplateBody' - Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide.) Conditional: You must pass @TemplateBody@ or @TemplateURL@ . If both are passed, only @TemplateBody@ is used.
--
-- * 'etcParameters' - A list of @Parameter@ structures that specify input parameters.
estimateTemplateCost ::
  EstimateTemplateCost
estimateTemplateCost =
  EstimateTemplateCost'
    { _etcTemplateURL = Nothing,
      _etcTemplateBody = Nothing,
      _etcParameters = Nothing
    }

-- | Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
etcTemplateURL :: Lens' EstimateTemplateCost (Maybe Text)
etcTemplateURL = lens _etcTemplateURL (\s a -> s {_etcTemplateURL = a})

-- | Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide.) Conditional: You must pass @TemplateBody@ or @TemplateURL@ . If both are passed, only @TemplateBody@ is used.
etcTemplateBody :: Lens' EstimateTemplateCost (Maybe Text)
etcTemplateBody = lens _etcTemplateBody (\s a -> s {_etcTemplateBody = a})

-- | A list of @Parameter@ structures that specify input parameters.
etcParameters :: Lens' EstimateTemplateCost [Parameter]
etcParameters = lens _etcParameters (\s a -> s {_etcParameters = a}) . _Default . _Coerce

instance AWSRequest EstimateTemplateCost where
  type
    Rs EstimateTemplateCost =
      EstimateTemplateCostResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "EstimateTemplateCostResult"
      ( \s h x ->
          EstimateTemplateCostResponse'
            <$> (x .@? "Url") <*> (pure (fromEnum s))
      )

instance Hashable EstimateTemplateCost

instance NFData EstimateTemplateCost

instance ToHeaders EstimateTemplateCost where
  toHeaders = const mempty

instance ToPath EstimateTemplateCost where
  toPath = const "/"

instance ToQuery EstimateTemplateCost where
  toQuery EstimateTemplateCost' {..} =
    mconcat
      [ "Action" =: ("EstimateTemplateCost" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TemplateURL" =: _etcTemplateURL,
        "TemplateBody" =: _etcTemplateBody,
        "Parameters"
          =: toQuery (toQueryList "member" <$> _etcParameters)
      ]

-- | The output for a 'EstimateTemplateCost' action.
--
--
--
-- /See:/ 'estimateTemplateCostResponse' smart constructor.
data EstimateTemplateCostResponse = EstimateTemplateCostResponse'
  { _etcrrsURL ::
      !(Maybe Text),
    _etcrrsResponseStatus ::
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

-- | Creates a value of 'EstimateTemplateCostResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etcrrsURL' - An AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
--
-- * 'etcrrsResponseStatus' - -- | The response status code.
estimateTemplateCostResponse ::
  -- | 'etcrrsResponseStatus'
  Int ->
  EstimateTemplateCostResponse
estimateTemplateCostResponse pResponseStatus_ =
  EstimateTemplateCostResponse'
    { _etcrrsURL = Nothing,
      _etcrrsResponseStatus = pResponseStatus_
    }

-- | An AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
etcrrsURL :: Lens' EstimateTemplateCostResponse (Maybe Text)
etcrrsURL = lens _etcrrsURL (\s a -> s {_etcrrsURL = a})

-- | -- | The response status code.
etcrrsResponseStatus :: Lens' EstimateTemplateCostResponse Int
etcrrsResponseStatus = lens _etcrrsResponseStatus (\s a -> s {_etcrrsResponseStatus = a})

instance NFData EstimateTemplateCostResponse
