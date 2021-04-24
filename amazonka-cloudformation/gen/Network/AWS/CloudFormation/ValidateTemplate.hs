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
-- Module      : Network.AWS.CloudFormation.ValidateTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
module Network.AWS.CloudFormation.ValidateTemplate
  ( -- * Creating a Request
    validateTemplate,
    ValidateTemplate,

    -- * Request Lenses
    vtTemplateURL,
    vtTemplateBody,

    -- * Destructuring the Response
    validateTemplateResponse,
    ValidateTemplateResponse,

    -- * Response Lenses
    vtrrsCapabilities,
    vtrrsDeclaredTransforms,
    vtrrsDescription,
    vtrrsParameters,
    vtrrsCapabilitiesReason,
    vtrrsResponseStatus,
  )
where

import Network.AWS.CloudFormation.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for 'ValidateTemplate' action.
--
--
--
-- /See:/ 'validateTemplate' smart constructor.
data ValidateTemplate = ValidateTemplate'
  { _vtTemplateURL ::
      !(Maybe Text),
    _vtTemplateBody :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ValidateTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtTemplateURL' - Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
--
-- * 'vtTemplateBody' - Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
validateTemplate ::
  ValidateTemplate
validateTemplate =
  ValidateTemplate'
    { _vtTemplateURL = Nothing,
      _vtTemplateBody = Nothing
    }

-- | Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager document. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
vtTemplateURL :: Lens' ValidateTemplate (Maybe Text)
vtTemplateURL = lens _vtTemplateURL (\s a -> s {_vtTemplateURL = a})

-- | Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html Template Anatomy> in the AWS CloudFormation User Guide. Conditional: You must pass @TemplateURL@ or @TemplateBody@ . If both are passed, only @TemplateBody@ is used.
vtTemplateBody :: Lens' ValidateTemplate (Maybe Text)
vtTemplateBody = lens _vtTemplateBody (\s a -> s {_vtTemplateBody = a})

instance AWSRequest ValidateTemplate where
  type Rs ValidateTemplate = ValidateTemplateResponse
  request = postQuery cloudFormation
  response =
    receiveXMLWrapper
      "ValidateTemplateResult"
      ( \s h x ->
          ValidateTemplateResponse'
            <$> ( x .@? "Capabilities" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> ( x .@? "DeclaredTransforms" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "Description")
            <*> ( x .@? "Parameters" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "CapabilitiesReason")
            <*> (pure (fromEnum s))
      )

instance Hashable ValidateTemplate

instance NFData ValidateTemplate

instance ToHeaders ValidateTemplate where
  toHeaders = const mempty

instance ToPath ValidateTemplate where
  toPath = const "/"

instance ToQuery ValidateTemplate where
  toQuery ValidateTemplate' {..} =
    mconcat
      [ "Action" =: ("ValidateTemplate" :: ByteString),
        "Version" =: ("2010-05-15" :: ByteString),
        "TemplateURL" =: _vtTemplateURL,
        "TemplateBody" =: _vtTemplateBody
      ]

-- | The output for 'ValidateTemplate' action.
--
--
--
-- /See:/ 'validateTemplateResponse' smart constructor.
data ValidateTemplateResponse = ValidateTemplateResponse'
  { _vtrrsCapabilities ::
      !(Maybe [Capability]),
    _vtrrsDeclaredTransforms ::
      !(Maybe [Text]),
    _vtrrsDescription ::
      !(Maybe Text),
    _vtrrsParameters ::
      !( Maybe
           [TemplateParameter]
       ),
    _vtrrsCapabilitiesReason ::
      !(Maybe Text),
    _vtrrsResponseStatus ::
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

-- | Creates a value of 'ValidateTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtrrsCapabilities' - The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the 'CreateStack' or 'UpdateStack' actions with your template; otherwise, those actions return an InsufficientCapabilities error. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .
--
-- * 'vtrrsDeclaredTransforms' - A list of the transforms that are declared in the template.
--
-- * 'vtrrsDescription' - The description found within the template.
--
-- * 'vtrrsParameters' - A list of @TemplateParameter@ structures.
--
-- * 'vtrrsCapabilitiesReason' - The list of resources that generated the values in the @Capabilities@ response element.
--
-- * 'vtrrsResponseStatus' - -- | The response status code.
validateTemplateResponse ::
  -- | 'vtrrsResponseStatus'
  Int ->
  ValidateTemplateResponse
validateTemplateResponse pResponseStatus_ =
  ValidateTemplateResponse'
    { _vtrrsCapabilities =
        Nothing,
      _vtrrsDeclaredTransforms = Nothing,
      _vtrrsDescription = Nothing,
      _vtrrsParameters = Nothing,
      _vtrrsCapabilitiesReason = Nothing,
      _vtrrsResponseStatus = pResponseStatus_
    }

-- | The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the 'CreateStack' or 'UpdateStack' actions with your template; otherwise, those actions return an InsufficientCapabilities error. For more information, see <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities Acknowledging IAM Resources in AWS CloudFormation Templates> .
vtrrsCapabilities :: Lens' ValidateTemplateResponse [Capability]
vtrrsCapabilities = lens _vtrrsCapabilities (\s a -> s {_vtrrsCapabilities = a}) . _Default . _Coerce

-- | A list of the transforms that are declared in the template.
vtrrsDeclaredTransforms :: Lens' ValidateTemplateResponse [Text]
vtrrsDeclaredTransforms = lens _vtrrsDeclaredTransforms (\s a -> s {_vtrrsDeclaredTransforms = a}) . _Default . _Coerce

-- | The description found within the template.
vtrrsDescription :: Lens' ValidateTemplateResponse (Maybe Text)
vtrrsDescription = lens _vtrrsDescription (\s a -> s {_vtrrsDescription = a})

-- | A list of @TemplateParameter@ structures.
vtrrsParameters :: Lens' ValidateTemplateResponse [TemplateParameter]
vtrrsParameters = lens _vtrrsParameters (\s a -> s {_vtrrsParameters = a}) . _Default . _Coerce

-- | The list of resources that generated the values in the @Capabilities@ response element.
vtrrsCapabilitiesReason :: Lens' ValidateTemplateResponse (Maybe Text)
vtrrsCapabilitiesReason = lens _vtrrsCapabilitiesReason (\s a -> s {_vtrrsCapabilitiesReason = a})

-- | -- | The response status code.
vtrrsResponseStatus :: Lens' ValidateTemplateResponse Int
vtrrsResponseStatus = lens _vtrrsResponseStatus (\s a -> s {_vtrrsResponseStatus = a})

instance NFData ValidateTemplateResponse
