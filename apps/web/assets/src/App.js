import React from "react";

import { ChakraProvider } from "@chakra-ui/react";
import { RouterProvider } from "react-router-dom";

// eslint-disable-next-line no-extra-parens
const App = () => (
    <ChakraProvider theme={theme}>
        <AuthProvider>
            {/*<RouterProvider router={router} />*/}
        </AuthProvider>
    </ChakraProvider>
);

export default App;
